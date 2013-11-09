//
//  main.cpp
//  DivideExample
//
//  Created by CJ Gehin-Scott on 11/8/13.
//  Copyright (c) 2013 IT320. All rights reserved.
//

#include <iostream>

using namespace std;//like scanner in Java

class method{
public:
    double divide(double x, double y) {
        return x/y;
    }
    double divide1(double x, double y, double z) {
        return x/y/z;
    }

};

int main(){
    int array [] = {1,3,5};
    int array2 [10];
    cout << array[0] << endl;
    
    //for(int i = 0; i<=3; i++){
    while (true) {
        cout << "Enter a numerator: ";
        double x;
        cin >> x;
        cout << "Enter a denominator: ";
        double y;
        cin >> y;
        method m;
        double z = m.divide(x,y);
        cout << x << "/" << y << "=" << z << endl;
        //printf("%f / %f = %.2f",x,y,z);
        
        cout << "C to continue : E to exit: ";
        string s;
        cin >> s;
        if(s ==  "E")
            break;
    }
}


