//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by ANIS TAYEBALI on 2/18/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (IBAction)showQuestion:(id)sender
{
  
//  int upperBound = [self.questions count];
//  int lowerBound = 0;
//  
//  int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
//  
//  self.currentQuestionIndex = rndValue;
  self.currentQuestionIndex++;
  
  if (self.currentQuestionIndex == [self.questions count])
  {
    self.currentQuestionIndex = 0;
    
  }
  
  NSString *question = self.questions[self.currentQuestionIndex];
  self.questionLabel.text = question;
  
  self.answerLabel.text = @"???";

}
-(IBAction)showAnswer:(id)sender
{

  
  NSString *answer = self.answers[self.currentQuestionIndex];
  self.answerLabel.text = answer;

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      self.questions = @[@"From what is cognac made?",
                         @"What is 7 + 7?",
                         @"What is the capitol of Vermont?"];
      
      self.answers = @[@"Grapes",
                       @"14",
                       @"Montpeleir"];
                        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
