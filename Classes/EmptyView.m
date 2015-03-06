//
//  EmptyView.m
//  Pods
//
//  Created by Frank Michael on 5/27/14.
//
//

#import "EmptyView.h"
#import "BorderButton.h"

@interface EmptyView () {
    UILabel *mainTitle;
    UIView *parentView;
    BorderButton *actionButton;
    Completion actionCallback;
}
- (void)actionButtonPressed;
@end

@implementation EmptyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}
- (instancetype)initWithParentController:(UIViewController *)viewController andActionCallback:(Completion)callback{
    self = [super init];
    if (self){
        actionCallback = callback;
        parentView = viewController.view;
        CGFloat yOffset = 0;
        if ([viewController isKindOfClass:[UINavigationController class]] || [viewController.parentViewController isKindOfClass:[UINavigationController class]]){
            yOffset = 60;
        }
        self.frame = CGRectMake(0, yOffset, parentView.frame.size.width, parentView.frame.size.height);
        mainTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 50)];
        mainTitle.textAlignment = NSTextAlignmentCenter;
        mainTitle.font = [UIFont systemFontOfSize:40];
        [self addSubview:mainTitle];
        
        actionButton = [[BorderButton alloc] initWithFrame:CGRectMake(120, 300, 80, 80)];
        [actionButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [actionButton setTitle:@"" forState:UIControlStateNormal];
        [actionButton addTarget:self action:@selector(actionButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:actionButton];
        self.backgroundColor = [UIColor whiteColor];
        self.alpha = 0;
    }
    return self;
}
- (void)setTitle:(NSString *)title{
    _title = title;
    mainTitle.text = _title;
}
- (void)setButtonTitle:(NSString *)buttonTitle{
    _buttonTitle = buttonTitle;
    [actionButton setTitle:_buttonTitle forState:UIControlStateNormal];
}
- (void)show{
    [parentView addSubview:self];
    [UIView animateWithDuration:.5 animations:^{
        self.alpha = 1;
    }];
}
- (void)actionButtonPressed{
    if (actionCallback){
        actionCallback();
    }
}
- (void)dismiss{
    [UIView animateWithDuration:.5 animations:^{
        self.alpha = 0;
    }completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
