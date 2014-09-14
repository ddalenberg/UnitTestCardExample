//
//  Deck.h
//  UnitTestCardExample
//
//  Created by Don Dalenberg on 9/11/14.
//  Copyright (c) 2014 Don Dalenberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
