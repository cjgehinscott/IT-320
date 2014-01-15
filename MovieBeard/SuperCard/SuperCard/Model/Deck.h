//
//  Deck.h
//  Card
//
//  Created by CJ Gehin-Scott on 12/19/13.
//  Copyright (c) 2013 MovieBeard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
