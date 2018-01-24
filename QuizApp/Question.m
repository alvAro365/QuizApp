//
//  Question.m
//  QuizApp
//
//  Created by Alvar Aronija on 20/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "Question.h"

@interface Question ()

@property (nonatomic) NSString *theQuestion;
@property (nonatomic) NSString *incorrectAnswer1;
@property (nonatomic) NSString *incorrectAnswer2;
@property (nonatomic) NSString *incorrectAnswer3;
@property (nonatomic) NSString *correctAnswer;
@property (nonatomic) NSMutableArray *questions;

@end

@implementation Question


-(instancetype)initQuestion:(NSString*)question alt1:(NSString*)alt1 alt2:(NSString*)alt2 alt3:(NSString*)alt3 alt4:(NSString*)alt4 {
    
    self = [super init];
    
    if(self) {
        
        self.theQuestion = question;
        self.incorrectAnswer1 = alt1;
        self.incorrectAnswer2 = alt2;
        self.incorrectAnswer3 = alt3;
        self.correctAnswer = alt4;
        
    }
    
    return self;
}

-(NSString*) randomQuestion {
    
    return @"Which is the 3rd planet from Earth";
    
}





@end
