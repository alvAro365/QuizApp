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
@property (nonatomic) NSNumber *questionNumber;
@property (nonatomic) NSNumber *alternativeNumber;
@property (nonatomic) NSNumber *number2;
@property (nonatomic) NSNumber *number3;
@property (nonatomic) NSNumber *number4;
@property (nonatomic) NSMutableArray *alternatives;
@property (nonatomic) NSMutableArray *usedNumbers;
@property (nonatomic) NSNumber *firstNumber;
@property (nonatomic) NSNumber *secondNumber;
@property (nonatomic) NSNumber *thirdNumber;
@property (nonatomic) NSNumber *fourthNumber;

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
    

    
    
    return theQuestion;
}


-(NSArray*) getAlternatives {
    

 //   self.alternatives = [[NSMutableArray alloc] init];
    [self randomAlternativeNumber];
    
    
    NSString *alt1 = self.questions[self.questionNumber][nr1];
    NSString *alt2 = self.questions[self.questionNumber][nr2];
    NSString *alt3 = self.questions[self.questionNumber][nr3];
    NSString *alt4 = self.questions[self.questionNumber][nr4];
    
    NSArray *array = @[alt1,alt2,alt3,alt4];
    
/*
    [self.alternatives addObject:[array objectAtIndex:self.firstNumber]];
    [self.alternatives addObject:[array objectAtIndex:self.secondNumber]];
    [self.alternatives addObject:[array objectAtIndex:self.thirdNumber]];
    [self.alternatives addObject:[array objectAtIndex:self.fourthNumber]];
*/

    return array;
    
}

-(int)randomQuestionNumber {
    return arc4random_uniform(9)+1;
}

-(void)randomAlternativeNumber {
    self.firstNumber = [[NSNumber alloc] initWithInt:arc4random_uniform(3)];
    self.secondNumber = [[NSNumber alloc] initWithInt:arc4random_uniform(3)];
    self.thirdNumber = [[NSNumber alloc] initWithInt:arc4random_uniform(3)];
    self.fourthNumber = [[NSNumber alloc] initWithInt:arc4random_uniform(3)];
    
    NSMutableArray *randomNumbers = [[NSMutableArray alloc]init];
    
    [randomNumbers addObject:self.firstNumber];
    [randomNumbers addObject:self.secondNumber];
    [randomNumbers addObject:self.thirdNumber];
    [randomNumbers addObject:self.fourthNumber];
    
    for(NSNumber *number in randomNumbers) {
        
    }
    
}





@end
