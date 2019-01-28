#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <stdlib.h>

int main()
{
    int age;
    int year;
    std::string guy;
    int mainChoice;
    std::ofstream db;
    db.open("database.txt");

    std::string warningText = "Please note that this will be not permanent, we are planning to add a encrypted save file.\n";

    db << warningText;

    std::cout << "Welcome to Project Xeon! A text-based game made in C++!" << std::endl;
    std::cout << "Please enter your name..." << std::endl;
    std::getline(std::cin, guy);
    std::cout << "Hello "<< guy << "!" << std::endl;
    db << guy;
    std::cout << "Press anything to continue!" << std::endl;
    system("pause>nul");
    system("cls");
    std::cout << "Select a year that you will be born in..." << std::endl;
    std::cin >> year;
    db << year;
    std::cout << "The year is now " << year << "!" << std::endl;
    system("pause>nul");

    age = 0;
    age = age+1;
    year = year+1;
        
    db.close();    
    std::cout << "You are now " << age << " and it's " << year << std::endl;
    system("pause");
    return 0;
}