//
//  ViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2014/12/24.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "WinViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     mine=0;
    
          result.text=[NSString stringWithFormat:@""];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
}


//en=2チョキ
//en=1グー
//en=0パー
-(IBAction)tyo{
    zenntai++;
    watasi.image = [UIImage imageNamed:@"jyank2.png"];
    mine=1;
     en=arc4random()% 3;
       if (en==0) {
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank3.png"];
        result.text=[NSString stringWithFormat:@"勝ち"];
        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
        [self presentViewController:secondViewController animated:YES completion:nil];
      

        
        
    }
    else if (en==1){
        aite.image = [UIImage imageNamed:@"jyank1.png"];
    result.text=[NSString stringWithFormat:@"負け"];
           }
    else if (en==2){
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
        
        

    }
}


-(IBAction)pa{
    zenntai++;
    watasi.image = [UIImage imageNamed:@"jyank3.png"];

    mine=1;
    en=arc4random()% 3;
   
    if (en==0) {
        aite.image = [UIImage imageNamed:@"jyank3.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
        
        
        
    }
    else if (en==1){
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank1.png"];

        result.text=[NSString stringWithFormat:@"勝ち"];
                SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
        [self presentViewController:secondViewController animated:YES completion:nil];
        
        

    }
    else if(en==2){
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"負け"];
    
    }
}


-(IBAction)go{
    zenntai++;
    watasi.image=[UIImage imageNamed:@"jyank1.png"];

    mine=1;
    en=arc4random()% 3;
   
    if (en==0) {
        aite.image = [UIImage imageNamed:@"jyank3.png"];

        result.text=[NSString stringWithFormat:@"負け"];
        
        }
    else if (en==1){
        aite.image = [UIImage imageNamed:@"jyank1.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
          }
    else if (en==2){
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"勝ち"];
        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
        [self presentViewController:secondViewController animated:YES completion:nil];
           }
}
-(IBAction)idou{
    syouritu= syousuu/zenntai*100;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSLog(@"%f",syouritu);
    [userDefaults setInteger:syouritu forKey:@"age"];
    [userDefaults setInteger:syousuu forKey:@"kati"];
    WinViewController *winViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"win"];
    [self presentViewController:winViewController animated:YES completion:nil];

}
@end
