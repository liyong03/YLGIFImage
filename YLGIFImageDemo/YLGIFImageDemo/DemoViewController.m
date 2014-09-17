//
//  DemoViewController.m
//  YLGIFImageDemo
//
//  Created by Yong Li on 14-3-2.
//  Copyright (c) 2014年 Yong Li. All rights reserved.
//

#import "DemoViewController.h"
#import <YLGIFImage.h>
#import <YLImageView.h>

@interface DemoViewController ()

@end

@implementation DemoViewController

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
    // Do any additional setup after loading the view.
    
    self.title = @"YLGIFImageDemo";
    
    YLImageView* imageView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 160, self.view.frame.size.width, 0.75*self.view.frame.size.width)];
    [self.view addSubview:imageView];
    imageView.image = [YLGIFImage imageNamed:@"joy.gif"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
