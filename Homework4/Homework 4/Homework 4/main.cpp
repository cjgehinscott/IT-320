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
int howmany;//keeps track of the number of times the user wants to find the area of the shape
double arrayX[10];//array that will store on variable i.e. the radiuses for circles or the base for the triangles.
double arrayY[10];//array to store second variable i.e. the width of a rectangle.
double arrayZ[10];//array to store the third variable i.e. the height in trapezoid.
double results[10];//stores the results of the areas of the comutations
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
    //asks the user to select a shape to find the area of
    void shapeChoice(){
        cout << "1. Circle" << endl<< "2. Square"<< endl << "3. Rectangle" << endl << "4. Triangle" << endl << "5. Parallelogram"<< endl << "6. Ellipse" << endl << "7. Trapezoid"<< endl <<"0. Exit" << endl << "Please select your choice to calculate the area: " << endl ;
        cin >> choice;
    }
    //asks the user how many different areas they want to find of the shape selected
    double shapeCount(string shape){
        cout << "How many " << shape << "'s would you like to find the area of? (1-10): " << endl;
        cin >> howmany;
        return howmany;
    }//ends shapeCount
    
    /*stores the values of the user input variables and puts it into an array that will store just one variable at a time.*/
    void storeValuesX(string shapeParameter, string shape, int howmany){
        for(int i = 0; i<howmany; i++){
        cout << "Enter the " << shapeParameter << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayX[i];
            }
        }//ends storeValuesX
    //stores values in an array for shapes with 2 user defined parameters
    void storeValuesXY(string shapeParameter1,string shapeParameter2, string shape, int howmany){
        for(int i = 0; i<howmany; i++){
            cout << "Enter the " << shapeParameter1 << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayX[i];
            cout << "Enter the " << shapeParameter2 << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayY[i];
        }
    }//end storeValuesXY
    
    //stores values in an array for shapes with 3 user defined parameters
    void storeValuesXYZ(string shapeParameter1,string shapeParameter2, string shapeParameter3, string shape, int howmany){
        for(int i = 0; i<howmany; i++){
            cout << "Enter the " << shapeParameter1 << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayX[i];
            cout << "Enter the " << shapeParameter2 << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayY[i];
            cout << "Enter the " << shapeParameter3 << " for " << shape << " "<< i+1 << ": "<< endl;
            cin >> arrayZ[i];
        }//end storeValuesXYZ
    }
};

int main(){
    Methods m;
    while(true){
        m.shapeChoice();
        if(choice == 1){
            m.shapeCount("Circle");
            m.storeValuesX("Radius","Circle",howmany);
            for(int i = 0; i<howmany; i++){
                results[i] = m.circle(arrayX[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Circle " << i+1 << "= " << "Radius " << i+1 << "= "<< arrayX[i]<< " Area= "<< results[i]<< endl;
            }
        }else if(choice == 2){
            m.shapeCount("Square");
            m.storeValuesX("Side", "Square" , howmany);
            for(int i = 0; i<howmany; i++){
                results[i] = m.square(arrayX[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Square " << i+1 << ": " << "Side " << i+1 << "= "<< arrayX[i]<< " Area= "<< results[i]<< endl;
            }
        }else if(choice == 3){
            m.shapeCount("Rectangle");
            m.storeValuesXY("Length","Width","Rectangle",howmany);
            for(int i = 0; i <howmany; i++){
                results[i] = m.rectangle(arrayX[i], arrayY[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Rectangle " << i+1 << ": " << "Length " << i+1 << "= "<< arrayX[i]<< "," << "Width " << i+1 << "= " << arrayY[i] << " Area= "<< results[i]<< endl;
            }
        }else if(choice == 4){
            m.shapeCount("Triangle");
            m.storeValuesXY("Base", "Height", "Triangle", howmany);
            for (int i = 0; i < howmany; i++){
                results[i] = m.triangle(arrayX[i], arrayY[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Triangle " << i+1 << ": " << "Base " << i+1 << "= "<< arrayX[i]<< "," << "Height " << i+1 << "= " << arrayY[i] << " Area= "<< results[i]<< endl;
            }
        }else if(choice == 5){
            m.shapeCount("Parallelogram");
            m.storeValuesXY("Base", "Height", "Parallelogram", howmany);
            for(int i = 0; i < howmany; i++){
                results[i] = m.parallelogram(arrayX[i], arrayY[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Parallelogram " << i+1 << ": " << "Base " << i+1 << "= "<< arrayX[i]<< "," << "Height " << i+1 << "= " << arrayY[i] << " Area= "<< results[i]<< endl;
            }
        }else if(choice == 6){
            m.shapeCount("Ellipse");
            m.storeValuesXY("Major Axis", "Minor Axis","Ellipse", howmany);
            for(int i = 0; i < howmany; i++){
                results[i] = m.ellipse(arrayX[i], arrayY[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Ellipse " << i+1 << ": " << "Major Axis " << i+1 << "= "<< arrayX[i]<< "," << "Minor Axis " << i+1 << "= " << arrayY[i] << " Area= "<< results[i]<< endl;
            }
        }else if(choice == 7){
            m.shapeCount("Trapezoid");
            m.storeValuesXYZ("Side1","Side2","Height","Trapezoid",howmany);
            for(int i = 0; i < howmany; i++){
                results[i] = m.trapezoid(arrayX[i], arrayY[i], arrayZ[i]);
            }
            cout << "Results of your choices:"<<endl;
            for(int i = 0; i<howmany; i++){
                cout << "Trapezoid " << i+1 << ": " << "Side1"<< "= "<< arrayX[i]<< "," << "Side2"<< "= " << arrayY[i] << "," << "Height" << i+1 << "=" << arrayZ[i] << "," << " Area" << i+1 << "= "<< results[i]<< endl;
            }
        }else if(choice == 0){
            break;
        }
    }
}

