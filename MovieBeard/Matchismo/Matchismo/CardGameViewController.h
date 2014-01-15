//
//  CardGameViewController.h
//  Matchismo
//
//  Created by CJ Gehin-Scott on 12/21/13.
//  Copyright (c) 2013 MovieBeard. All rights reserved.
// Abstract class. Must Implement methods as described below

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

//protected
//for subclasses
-(Deck *)createDeck; //abstract method

@end
