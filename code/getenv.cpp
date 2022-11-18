#include <iostream>
#include <cstdlib>
 
int main()
{
    if(const char* env_p = std::getenv("SCRATCH"))
        std::cout << "Your SCRATCH is: " << env_p << '\n';
}
