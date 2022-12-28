#pragma once

#include <atomic>
#include <chrono>
#include <ctime>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <memory>
#include <optional>
#include <sstream>
#include <string>
#include <string_view>
#include <thread>

namespace klog
{

enum log_severity
{
    warning,
    error,
    info,
    trace
};

class klogger_config
{
public:
    klogger_config(std::string log_dir,
                   log_severity logger_severity = log_severity::info)
        : log_dir_(std::move(log_dir)), logger_severity_(logger_severity)
    {
    }

    const auto& log_dir() const { return log_dir_; }
    const auto& logger_severity() const { return logger_severity_; }

private:
    std::string log_dir_;
    log_severity logger_severity_;
};

class klogger
{
public:
    inline static klogger&
    instance(const std::optional<klogger_config>& config = std::nullopt)
    {
        if (!initialised_ && !config.has_value())
        {
            throw std::runtime_error(
                "Config was not supplied to initial klogger instance.");
        }
        else
        {
            initialised_ = true;
        }
        static thread_local klogger instance(config.value().log_dir(),
                                             config.value().logger_severity());
        return instance;
    }

    inline void write(const std::string& s,
                      log_severity severity = log_severity::info) const
    {
        klogger_impl_->write(s, severity);
    }

    klogger(const klogger&) = delete;
    void operator=(const klogger&) = delete;

private:
    klogger(std::string log_dir, log_severity severity)
        : klogger_impl_(
              std::make_unique<klogger_impl>(std::move(log_dir), severity))
    {
    }

    class klogger_impl
    {
    public:
        klogger_impl(std::string_view log_dir,
                     log_severity severity = log_severity::info)
            : file_name_((std::ostringstream{}
                          << log_dir << std::this_thread::get_id() << ".txt")
                             .str()),
              logger_severity_(severity)
        {
        }

        ~klogger_impl()
        {
            try
            {
                ofs_.close();
            }
            catch (...)
            {
            }
        }

        inline void write(const std::string& s,
                          log_severity severity = log_severity::info) const
        {
            static constexpr const char* log_severity_str[4] = {
                "warning", "error", "info", "trace"};

            const auto& write_line = [this, severity](std::string_view s)
            {
                // Time
                const auto& time = std::chrono::system_clock::to_time_t(
                    std::chrono::system_clock::now());
                const auto& local_time = std::localtime(&time);
                ofs_ << "[" << std::put_time(local_time, "%F %H:%M:%C %Z")
                     << "]";

                // Severity
                ofs_ << "[" << log_severity_str[severity] << "]";

                // Log message
                ofs_ << s;

                // New line
                ofs_ << "\n";
            };

            if (!ofs_.is_open())
            {
                ofs_.open(file_name_);
            }
            if (severity <= logger_severity_)
            {
                write_line(s);
            }
        }

        klogger_impl(const klogger_impl& l) = delete;
        void operator=(const klogger_impl& l) = delete;

    private:
        std::string file_name_;
        log_severity logger_severity_;
        mutable std::ofstream ofs_;
    };

    static inline std::atomic<bool> initialised_ = false;
    std::unique_ptr<klogger_impl> klogger_impl_;
};
} // namespace klog
