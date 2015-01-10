//
//  NannidosenntakuViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2015/01/10.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "NannidosenntakuViewController.h"
#import "CharengeViewController.h"

@interface NannidosenntakuViewController ()

@end

@implementation NannidosenntakuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
-(IBAction)easy{
    nannido=1;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
   
    [userDefaults setInteger:nannido forKey:@"hard"];
    
    CharengeViewController *charenge = [self.storyboard instantiateViewControllerWithIdentifier:@"charenge"];
    [self presentViewController:charenge animated:YES completion:nil];

}
-(IBAction)nomal{
    nannido=2;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setInteger:nannido forKey:@"hard"];
    
    CharengeViewController *charenge = [self.storyboard instantiateViewControllerWithIdentifier:@"charenge"];
    [self presentViewController:charenge animated:YES completion:nil];
}
-(IBAction)hard{
    nannido=3;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setInteger:nannido forKey:@"hard"];
    
    CharengeViewController *charenge = [self.storyboard instantiateViewControllerWithIdentifier:@"charenge"];
    [self presentViewController:charenge animated:YES completion:nil];
}

@end
