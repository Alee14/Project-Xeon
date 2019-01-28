#include <iostream>
#include <vector>
#include <string>
#include <fstream>

void displayMenu()
{

}

int main()
{
    int age;
    int year = 2019;
    std::string guy;
    int mainChoice;

    std::cout << "Welcome to Project Xeon! A text-based game made in C++!" << std::endl;
    std::cout << "Please enter your name..." << std::endl;
    std::getline(std::cin, guy);
    std::cout << "Hello "<< guy << "!" << std::endl;

    age = 0;
    age = age+1;
    year = year+1;
        
    std::cout << "You are now " << age << " and it's " << year << std::endl;
    
    return 0;
}