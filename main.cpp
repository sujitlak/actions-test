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

    double g = appleFunction(c, d);

    int h = bananaFunction(a, b);

    std::cout << "The purpose of this program is to test the functionality of a proper repository." << "\n";

    std::cout << "e: " << e << " f: " << f << "\n";
    std::cout << "g: " << g << "\n";

    std::cout << "Apple function result e: "<< e << "\n";
    std::cout << "Banana function result h: "<< h << "\n";
}