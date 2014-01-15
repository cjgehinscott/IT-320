//
//  PlayingCardView.h
//  SuperCard
//
//  Created by CJ Gehin-Scott on 1/10/14.
//  Copyright (c) 2014 MovieBeard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

-(void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
