#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;

    int a = 12;
    int b = 14;

    if(a | b == 0) {
        std::cout << "Equal values!" << std::endl;
    } else {
        std::cout << "Distinct values!" << std::endl;
    }


    return 0;
}
