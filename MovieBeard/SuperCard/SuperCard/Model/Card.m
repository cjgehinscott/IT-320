#import "Card.h"

@interface Card()

@end

@implementation Card

-(int)match:(NSArray *)otherCard
{
    int score = 0;
    
    for (Card *card in otherCard) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}
@end