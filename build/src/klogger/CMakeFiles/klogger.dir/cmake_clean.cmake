file(REMOVE_RECURSE
  "libklogger.a"
  "libklogger.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/klogger.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
