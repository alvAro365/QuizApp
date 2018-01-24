//
//  QuestionLibrary.h
//  QuizApp
//
//  Created by Alvar Aronija on 24/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionLibrary : NSObject

-(NSString*) randomQuestion;
-(NSMutableArray*) getAlternatives;


@end
