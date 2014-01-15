#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) bool chosen;
@property (nonatomic, getter = isMatched) bool matched;

-(int)match: (NSArray *)otherCard;

@end