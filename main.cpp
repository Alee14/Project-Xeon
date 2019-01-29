#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <stdlib.h>
#include "dependencies/nlohmann/json.hpp"

using json = nlohmann::json;

int main()
{
    int age;
    int year;
    std::string username;
    int mainChoice;
    std::ifstream i("database.json");
    json j;
    i >> j;

    std::cout << "Welcome to Project Xeon! A text-based game made in C++!" << std::endl;
    std::cout << "Please enter your name..." << std::endl;
    std::getline(std::cin, username);
    std::cout << "Hello "<< username << "!" << std::endl;
    j["username"] = username;
    std::cout << "Press anything to continue!" << std::endl;
    system("pause>nul");
    system("cls");
    std::cout << "Select a year that you will be born in..." << std::endl;
    std::cin >> year;
    j["year"] = year;
    std::cout << "The year is now " << year << "!" << std::endl;
    system("pause>nul");

    age = 0;
    age = age+1;
    year = year+1;
           
    std::cout << "You are now " << age << " and it's " << year << std::endl;
    system("pause");
    return 0;
}