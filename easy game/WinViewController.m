//
//  WinViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2014/12/25.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import "WinViewController.h"

@interface WinViewController ()

@end

@implementation WinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
   int total = [userDefaults integerForKey:@"age"];
    labela.text=[NSString stringWithFormat:@"%d％",total];
    int winner = [userDefaults integerForKey:@"kati"];
    labelb.text=[NSString stringWithFormat:@"%d回",winner];
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
