//
//  QuizAppViewController.m
//  QuizApp
//
//  Created by Alvar Aronija on 20/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "QuizAppViewController.h"
#import "QuestionLibrary.h"



@interface QuizAppViewController ()
@property (nonatomic) NSMutableArray *alternatives;
@property (nonatomic) QuestionLibrary *questions;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation QuizAppViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = [[QuestionLibrary alloc] init];
    [self setViews];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.alternatives.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"questionCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text =  self.alternatives[indexPath.row];
  
    cell.textLabel.textAlignment = NSTextAlignmentCenter;

    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    int selectedRow = (int)indexPath.row;
    BOOL isTheAnswerRight = [self.questions checkAnswer:selectedRow];
    
    if(isTheAnswerRight){
        
        self.questionLabel.text = @"Correct answer :)";
    }else {
        
        self.questionLabel.text = @"Wrong answer :(";
    }
    

    
    
    
    
    
}

- (void)setViews{
    
    self.questionLabel.text = self.questions.randomQuestion;
    self.alternatives = self.questions.getAlternatives;

    
    
    
}

- (IBAction)nextQuestion:(id)sender {
    [self setViews];
    
    [self.tableView reloadData];
    


}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/






@end
