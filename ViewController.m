//
//  ViewController.m
//  fibfib
//
//  Created by Kotaro on 2014/07/21.
//  Copyright (c) 2014年 YamazakiKotaro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *fibLabel;
- (IBAction)fibButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *fibNumber;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
  _fibNumber.keyboardType = UIKeyboardTypeNumberPad;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fibButton:(id)sender {
    int n =[self.fibNumber.text intValue];
    
    int a,b=0,c=1,i;
    
    for (i=1; i<= n; i++) {
        
        
        
        a = b+c;
        b = c%1000;
        c = a;
        
        if (i == n) {
            self.fibLabel.text=[NSString stringWithFormat:@"%dふぃぼです",b];
          
        }
    }
    
    
}

@end
