#include "apple.h"
#include "banana.h"
#include <iostream>



int main() {
    std::cout << "Hello World! \n";
    int a = 12;
    int b = 23;

    double c = 12, d = 10;
    int e = appleFunction(a, b);
    double f = bananaFunction(c, d);

    std::cout << "e: " << e << " f: " << f << "\n";
}