//
//  EmptyView.h
//  Pods
//
//  Created by Frank Michael on 5/27/14.
//
//

#import <UIKit/UIKit.h>

typedef void (^Completion)();

@interface EmptyView : UIView

- (instancetype)initWithParentController:(UIViewController *)viewController andActionCallback:(Completion)callback;

@property (nonatomic,assign) NSString *title;
@property (nonatomic,assign) NSString *buttonTitle;

- (void)show;
- (void)dismiss;
@end
