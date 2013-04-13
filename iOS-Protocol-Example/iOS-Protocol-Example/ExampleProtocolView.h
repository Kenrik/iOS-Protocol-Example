//
//  ExampleProtocolView.h
//  iOS-Protocol-Example
//
//  Created by Admin on 4/12/13.
//
//

#import <UIKit/UIKit.h>

@protocol ExampleDelegate <NSObject>

- (void)requiredReturn:(id)sender;

@optional

- (void)optionalReturn:(id)sender;

@end

@interface ExampleProtocolView : UIView


@property (weak) id <ExampleDelegate> delegate;
@property (assign,nonatomic) BOOL trueFalseValue;

- (id)initWithFrame:(CGRect)frame
       withDelegate:(id <ExampleDelegate>)assignedDelegate;

@end
