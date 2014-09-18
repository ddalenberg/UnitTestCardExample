//
//  Playing CardDeckTestCase.m
//  UnitTestCardExample
//
//  Created by Don Dalenberg on 9/18/14.
//  Copyright (c) 2014 Don Dalenberg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@interface Playing_CardDeckTestCase : XCTestCase

@end

@implementation Playing_CardDeckTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPlayingCardDeckHasTheCorrectInitialCards
{
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    NSMutableArray *hearts = [@[] mutableCopy];
    NSMutableArray *diamonds = [@[] mutableCopy];
    NSMutableArray *clubs = [@[] mutableCopy];
    NSMutableArray *spades = [@[] mutableCopy];
    PlayingCard *randomCard;
    do {
        randomCard = (PlayingCard *)[deck drawRandomCard];
        if ([randomCard.suit isEqualToString:@"♥"]) [hearts addObject:randomCard];
        if ([randomCard.suit isEqualToString:@"♦"]) [diamonds addObject: randomCard];
        if ([randomCard.suit isEqualToString:@"♠"]) [spades addObject:randomCard];
        if ([randomCard.suit isEqualToString:@"♣"]) [clubs addObject:randomCard];
    } while (randomCard);
    NSUInteger expectedCount = 13;
    XCTAssertEqual([hearts count], expectedCount, @"Should be 13 cards");
    XCTAssertEqual([diamonds count], expectedCount, @"Should be 13 cards"
                   );
    XCTAssertEqual([spades count], expectedCount, @"Should be 13 cards");
    XCTAssertEqual([clubs count], expectedCount, @"Should be 13 cards");
}



@end
