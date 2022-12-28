#include "klogger.hpp"
#include "gtest/gtest.h"

TEST(write_test, simple_write)
{
    klog::klogger_config cfg{"/home/kelvin/dev/logger/tests/log/"};
    const auto& instance = klog::klogger::instance(cfg);
    instance.write("Test");
}

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
