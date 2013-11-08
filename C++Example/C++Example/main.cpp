//
//  main.cpp
//  C++Example
//
//  Created by CJ Gehin-Scott on 11/1/13.
//  Copyright (c) 2013 IT320. All rights reserved.
//
#include <iostream>
using namespace std;//std is like Scanner

class method{
    public:
    int fun1(int a){
        a = a + 1;
        return a;
    }
    int fun2(int *a ){
        *a = *a + 1;
        return *a;
    }
};

int main(){
    int a = 10;
    cout << "Original a:" << a << endl;
    method m;
    int b = a + m.fun1(a);
    cout << "After fun1 b: " << b << endl;
    int c = a + m.fun2(&a);
    cout<< "After fun2 c: " << c << endl;
    
    /*int y = 1;
    int z = 1;
    int r1 = (m.fun1(a) + y) + (m.fun1(a) + z);
    int temp = m.fun1(a);
    int r2 = (temp + y) + (temp + z);
    cout<< "r1 = " << r1 << " and r2 = " << r2 << endl;*/
    
    int y = 1;
    int z = 1;
    int r1 = (m.fun2(&a) + y) + (m.fun2(&a) + z);
    int temp = m.fun2(&a);
    int r2 = (temp + y) + (temp +z);
    cout<< "r1 = " << r1 <<" and r2 = " << r2 << endl;
    
    cout<<(y == z)<<endl;
    cout<<(y != z)<<endl;
    bool d = true;
    cout<< d << endl;
    
    float f = 1; //implied that 1 is a float not an int
    int g = (int) f;//explicitly changing 1 back to an int
    
    int h = (y!=z ? 10 : 11);//short circuit ? equals if and : equals else
    cout<<"h = " << h << endl;
    
    
}
