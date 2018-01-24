//
//  QuestionLibrary.m
//  QuizApp
//
//  Created by Alvar Aronija on 24/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "QuestionLibrary.h"
#import "Question.h"

@interface QuestionLibrary()

@property (nonatomic) NSDictionary *questions;
@property (nonatomic) NSNumber *number;
@property (nonatomic) NSNumber *number1;
@property (nonatomic) NSNumber *number2;
@property (nonatomic) NSNumber *number3;
@property (nonatomic) NSNumber *number4;
@end


@implementation QuestionLibrary

- (BOOL)checkAnswer:(int)number {
    
    BOOL isTheAnswerRight = NO;
    if(number == 0) {
        isTheAnswerRight = YES;
        
    }
    
    
    return isTheAnswerRight;
}

-(NSString*) randomQuestion{
    
    int randomQuestion = arc4random_uniform(9)+1;
    int randomAlternative = arc4random_uniform(3)+1;
    
    self.number = [NSNumber numberWithInt:randomQuestion];
    self.number1 = [NSNumber numberWithInt:arc4random_uniform(3)+1];
    
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
    
    NSString *theQuestion = self.questions[self.number][@"question"];
    

    
    
    return theQuestion;
}


-(NSMutableArray*) getAlternatives {
    

    NSMutableArray *alternatives = [[NSMutableArray alloc] init];
    
    NSString *alt1 = self.questions[self.number][@0];
    NSString *alt2 = self.questions[self.number][@1];
    NSString *alt3 = self.questions[self.number][@2];
    NSString *alt4 = self.questions[self.number][@3];
    
    [alternatives addObject:alt1];
    [alternatives addObject:alt2];
    [alternatives addObject:alt3];
    [alternatives addObject:alt4];
    
    return alternatives;
    
}


@end
