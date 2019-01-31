#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <stdlib.h>

int main()
{
    int age;
    int year;
    bool oobe = true;
    std::string username;
    int mainChoice;

    if (oobe == true)
    {
    std::cout << "Welcome to Project Xeon! A text-based game made in C++!" << std::endl;
    std::cout << "Please enter your name..." << std::endl;
    std::getline(std::cin, username);
    std::cout << "Hello "<< username << "!" << std::endl;
    std::cout << "Press anything to continue!" << std::endl;
    std::getchar();
    system("cls");
    std::cout << "Select a year that you will be born in..." << std::endl;
    std::cin >> year;
    std::cout << "The year is now " << year << "!" << std::endl;
    std::cout << "Press anything to continue!" << std::endl;
    oobe = false;
    age = 0;
    age = age+1;
    year = year+1;
           
    std::cout << "You are now " << age << " and it's " << year << std::endl;
    std::getchar();
    } else {
    std::cout << "Welcome back!" << std::endl;
    }
    std::getchar();
    return 0;
}