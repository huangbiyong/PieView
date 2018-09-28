//
//  ViewController.m
//  PiesView
//
//  Created by chhu02 on 2018/9/28.
//  Copyright © 2018 chase. All rights reserved.
//

#import "ViewController.h"
#import "PiesView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PiesView *piesView = [[PiesView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    piesView.center = self.view.center;
    piesView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:piesView];
    
}


@end
