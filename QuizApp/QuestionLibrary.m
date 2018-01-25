//
//  QuestionLibrary.m
//  QuizApp
//
//  Created by Alvar Aronija on 24/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "QuestionLibrary.h"



@interface QuestionLibrary()

@property (nonatomic) NSDictionary *questions;
@property (nonatomic) NSNumber *questionNumber;
@property (nonatomic) NSMutableArray *alternatives;
@property (nonatomic) NSString *correctAnswer;


@end


@implementation QuestionLibrary

- (BOOL)checkAnswer:(int)number {
    BOOL isTheAnswerRight = NO;
    NSString *playersGuess = [self.alternatives objectAtIndex:number];
    if([playersGuess isEqualToString:self.correctAnswer]) {
        
        isTheAnswerRight = YES;
        
    }
    return isTheAnswerRight;
}

-(NSString*) randomQuestion{
    
    int randomQuestion = [self randomQuestionNumber];
    self.questionNumber = [NSNumber numberWithInt:randomQuestion];
    
    self.questions = @{@1: @{@"question": @"Which is the 1th planet from the Sun?",
                                @0: @"Mercury",
                                @1: @"Venus",
                                @2: @"Earth",
                                @3: @"Mars"},
                       @2: @{@"question": @"Which is the 2nd planet from the Sun?",
                                @0: @"Venus",
                                @1: @"Earth",
                                @2: @"Mars",
                                @3: @"Jupiter"},
                       @3: @{@"question": @"Which is the 3rd planet from the Sun?",
                             @0: @"Earth",
                             @1: @"Mars",
                             @2: @"Jupiter",
                             @3: @"Saturn"},
                       @4: @{@"question": @"Which is the 4th planet from the Sun?",
                             @0: @"Mars",
                             @1: @"Jupiter",
                             @2: @"Saturn",
                             @3: @"Uranus"},
                       @5: @{@"question": @"Which is the 5th planet from the Sun?",
                             @0: @"Jupiter",
                             @1: @"Saturn",
                             @2: @"Uranus",
                             @3: @"Neptune"},
                       @6: @{@"question": @"Which is the 6th planet from the Sun?",
                             @0: @"Saturn",
                             @1: @"Uranus",
                             @2: @"Neptune",
                             @3: @"Pluto"},
                       @7: @{@"question": @"Which is the 7th planet from the Sun?",
                             @0: @"Uranus",
                             @1: @"Neptune",
                             @2: @"Pluto",
                             @3: @"Mercury"},
                       @8: @{@"question": @"Which is the 8th planet from the Sun?",
                             @0: @"Neptune",
                             @1: @"Pluto",
                             @2: @"Uranus",
                             @3: @"Saturn"},
                       @9: @{@"question": @"Which is the 9th planet from the Sun?",
                             @0: @"Pluto",
                             @1: @"Neptune",
                             @2: @"Uranus",
                             @3: @"Saturn"},
                       @10: @{@"question": @"Which is the 10th planet from the Sun?",
                             @0: @"None of these",
                             @1: @"Mars",
                             @2: @"Earth",
                             @3: @"Jupiter"},
                       
                       };
    
    NSString *theQuestion = self.questions[self.questionNumber][@"question"];
    self.correctAnswer = self.questions[self.questionNumber][@0];
    return theQuestion;
}


-(NSMutableArray*) getAlternatives {
    
    NSString *alt1 = self.questions[self.questionNumber][@0];
    NSString *alt2 = self.questions[self.questionNumber][@1];
    NSString *alt3 = self.questions[self.questionNumber][@2];
    NSString *alt4 = self.questions[self.questionNumber][@3];
    
    NSArray *array = @[alt1,alt2,alt3,alt4];
    
    self.alternatives = array.mutableCopy;
    
    int count = (int)[self.alternatives count];
    
    for (int i = 0; i < count; ++i) {
        int numbers = count - i;
        int n = arc4random_uniform(numbers) + i;
        [self.alternatives exchangeObjectAtIndex:i withObjectAtIndex:n];
    }

    return self.alternatives;
    
}

-(int)randomQuestionNumber {
    return arc4random_uniform(9)+1;
}







@end
