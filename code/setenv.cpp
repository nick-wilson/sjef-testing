#include<stdlib.h>
#include<iostream>
#include <string>
#include <chrono>
#include <filesystem>
#include <regex>
#include <thread>
#include <sstream>
#include <cstdlib>
int main() {
  //TODO: append to PATH rather than replace
  _putenv_s("PATH", "C:\\msys64\\usr\\bin;C:\\Program Files\\Molpro\\bin;/usr/local/bin;/usr/bin;/bin");
  // set $SCRATCH to directory which can be safely resolved in MSYS2 and native Windows 
//  std::cout << "NW: getenv SCRATCH" << std::endl;
//  const char* scratch = std::getenv("SCRATCH");
//  std::cout << "NW: convert SCRATCH" << std::endl;
//  auto std::string scratch_env;
//  scratch_env = scratch;
//  std::cout << "NW: check empty SCRATCH" << std::endl;
  if (NULL==std::getenv("SCRATCH")){
    std::cout << "NW: is empty SCRATCH" << std::endl;
    const char* scratch = std::getenv("TEMP");
    std::string scratch_env = scratch;
    std::cout << "NW: check empty TEMP" << std::endl;
    if (!scratch_env.empty()) {
      std::cout << "NW: is empty TEMP" << std::endl;
      std::replace(scratch_env.begin(), scratch_env.end(), '\\', '/');
      std::cout << "NW: setenv SCRATCH" << std::endl;
      _putenv_s("SCRATCH", scratch_env.c_str());
      std::cout << "NW: SCRATCH: " <<  std::getenv("SCRATCH") << std::endl;
    }
  }
  std::cout << "NW: exit" << std::endl;
}
