//
//  ViewController.m
//  EmptyViewExample
//
//  Created by Frank Michael on 5/27/14.
//  Copyright (c) 2014 Frank Michael Sanchez. All rights reserved.
//

#import "ViewController.h"
#import <EmptyView.h>

@interface ViewController ()
- (IBAction)reloadEvents:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    EmptyView *emptyView = [[EmptyView alloc] initWithParentController:self andActionSelector:@selector(reloadEvents:)];
    emptyView.title = @"No Events";
    emptyView.buttonTitle = @"Reload";
    [emptyView show];
    
}
- (IBAction)reloadEvents:(id)sender{
    NSLog(@"Reload");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
