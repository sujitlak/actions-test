#include "apple.h"
#include <iostream>

int appleFunction(int a, int b) {
    return a + b;
}

double appleFunction(double a, double b) {
    return a + b;
}

void fizzBuzz(int a) {
    if(a % 3 == 0) {
        std::cout << "Fizz";
    }
    if(a % 5 == 0) {
        std::cout << "Buzz";
    }
    std::cout << "\n";
}
