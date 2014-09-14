//
//  DeckTestCase.m
//  UnitTestCardExample
//
//  Created by Don Dalenberg on 9/14/14.
//  Copyright (c) 2014 Don Dalenberg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Deck.h"

@interface DeckTestCase : XCTestCase

@end

@implementation DeckTestCase

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

- (void)testDrawCardFromEmptyDeckAnswersNoCard
{
    Deck *deck = [[Deck alloc] init];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertNil(drawnCard, @"Should not crash; just answer a nil object");
}

- (void)testOneCardDeckShouldAnswerThatCard
{
    Deck *deck = [[Deck alloc] init];
    Card *card = [[Card alloc] init];
    card.contents = @"test";
    [deck addCard:card];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertEqualObjects(card, drawnCard, @"Should have drawn the same card we added.");
}

@end
