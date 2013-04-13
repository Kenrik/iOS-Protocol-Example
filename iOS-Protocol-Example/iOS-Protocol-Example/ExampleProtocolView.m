//
//  ExampleProtocolView.m
//  iOS-Protocol-Example
//
//  Created by Admin on 4/12/13.
//
//

#import "ExampleProtocolView.h"
#define SAFE_PERFORM_WITH_ARG(THE_OBJECT, THE_SELECTOR, THE_ARG) (([THE_OBJECT respondsToSelector:THE_SELECTOR]) ? [THE_OBJECT performSelector:THE_SELECTOR withObject:THE_ARG] : nil)

@implementation ExampleProtocolView

- (id)initWithFrame:(CGRect)frame withDelegate:(id <ExampleDelegate>)assignedDelegate
{
    self = [super initWithFrame:frame];
    if (self) {

        [self setDelegate:assignedDelegate];
        [self setBackgroundColor:[UIColor whiteColor]];
        
        [self setupView];
    }
    return self;
}


-(void)setupView {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(buttonPressed:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press Me!" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 0, 160.0, 40.0)];
    [button setCenter:CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds))];
    [self addSubview:button];
}


-(void)buttonPressed:(id)sender {
    
    if ([sender isKindOfClass:[UIButton class]]) {
        
        if (self.trueFalseValue) {
            
            self.trueFalseValue = NO;
            
        } else {
            
            self.trueFalseValue = YES;
        }
        
        SAFE_PERFORM_WITH_ARG(self.delegate, @selector(requiredReturn:), self);
    }
}


@end
