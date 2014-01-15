//
//  CardMathingGame.h
//  Matchismo
//
//  Created by CJ Gehin-Scott on 1/1/14.
//  Copyright (c) 2014 MovieBeard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(instancetype)initWithCardCount:(NSUInteger)count
                       usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic,readonly) NSInteger score;

@end
