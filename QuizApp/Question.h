//
//  Question.h
//  QuizApp
//
//  Created by Alvar Aronija on 20/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

-(NSString*) randomQuestion;
-(instancetype)initQuestion:(NSString*)question alt1:(NSString*)alt1 alt2:(NSString*)alt2 alt3:(NSString*)alt3 alt4:(NSString*)alt4;



@end
