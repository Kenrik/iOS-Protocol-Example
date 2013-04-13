//
//  ViewController.m
//  iOS-Protocol-Example
//
//  Created by Kenrik March on 4/30/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ExampleProtocolView *exampleView = [[ExampleProtocolView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) withDelegate:self];
    [self.view addSubview:exampleView];
}


-(void)requiredReturn:(id)sender {
    
    if ([sender isKindOfClass:[ExampleProtocolView class]]) {
        
        ExampleProtocolView *exampleView = (ExampleProtocolView *)sender;
        
        NSLog(exampleView.trueFalseValue ? @"Yes" : @"No");
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
