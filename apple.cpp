#include "apple.h"
#include <iostream>

int appleFunction(int a, int b) {
    return a + b;
}

double appleFunction(double a, double b) {
    return a + b;
}

void dissMiss(int a) {
    if(a % 3 == 0) {
        std::cout << "Diss";
    }
    if(a % 5 == 0) {
        std::cout << "Miss";
    }
    std::cout << "\n";
}
