//
//  Child6Controller.m
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "Child6Controller.h"

@interface Child6Controller ()

@end

@implementation Child6Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"View Controller 6";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) navigationItemClick:(id)sender {
    [ROOT_NAV getTopViewControlelr];
    [ROOT_NAV popTopViewControllerWithisAnimation:YES];
}

@end
