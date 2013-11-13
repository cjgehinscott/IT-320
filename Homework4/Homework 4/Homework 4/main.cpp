//
//  main.cpp
//  Homework 4
//
//  Created by CJ Gehin-Scott on 11/12/13.
//  Copyright (c) 2013 IT320. All rights reserved.
//

#include <iostream>
#include <cmath>

using namespace std;

const double PI = 4.0*atan(1.0);
int choice;
double radius;
double side;
double length;
double width;
double base;
double height;
double majorAxis;
double minorAxis;
double side1;
double side2;
class Methods{
public:
    double circle(double radius){
        return (PI * radius * radius);
    }
    double square(double side){
        return side * side;
    }
    double rectangle(double length,double width){
        return length * width;
    }
    double triangle(double base,double height){
        return (0.5 * base * height);
    }
    double parallelogram(double base, double height){
        return base * height;
    }
    double ellipse(double majorAxis,double minorAxis){
        return (PI * majorAxis * minorAxis);
    }
    double trapezoid(double side1,double side2,double height){
        return (0.5 * (side1+side2) * height);
    }
    void shapeChoice(){
        cout << "1. Circle" << endl<< "2. Square"<< endl << "3. Rectangle" << endl << "4. Triangle" << endl << "5. Parallelogram"<< endl << "6. Ellipse" << endl << "7. Trapezoid"<< endl <<"0. Exit" << endl << "Please select your choice to calculate the area: " << endl ;
        cin >> choice;
    }
};

int main(){
    while(true){
        Methods m;
        m.shapeChoice();
        if(choice == 1){
            double z = m.circle(radius);
            cout << z;
        }else if(choice == 0){
            break;
        }
    }
}

