//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by CJ Gehin-Scott on 1/6/14.
//  Copyright (c) 2014 MovieBeard. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}


@end
