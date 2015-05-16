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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"kannsei" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    self.won = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
   
    result.text=[NSString stringWithFormat:@"じゃんけん・・・・"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillDisappear:(BOOL)animated{
    [self.won stop];
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
     en=arc4random()% 6;
       if (en>=0 && en<=3) {
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank3.png"];
        result.text=[NSString stringWithFormat:@"勝ち"];
           [self.won play];
           if (self.won.isPlaying == YES) {
               NSLog(@"鳴ってる");
           }
           [self slept];//メソッド呼び出し
           [self performSelector:@selector(goNext) withObject:nil afterDelay:1.0];//メソッドの遅延実行
     
    }
    else if (en>=4 && en<=5){
        aite.image = [UIImage imageNamed:@"jyank1.png"];
    result.text=[NSString stringWithFormat:@"負け"];
           }
    else if (en==6){
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
     
    }
    
}


-(IBAction)pa{
    zenntai++;
    watasi.image = [UIImage imageNamed:@"jyank3.png"];

    mine=1;
    en=arc4random()% 6;
   
    if (en>=0 && en<=3) {
        aite.image = [UIImage imageNamed:@"jyank3.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
        
        
        
    }
    else if (en>=4 && en<=5){
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank1.png"];

        result.text=[NSString stringWithFormat:@"勝ち"];
        [self.won play];
        if (self.won.isPlaying == YES) {
            NSLog(@"鳴ってる");
        }
        [self slept];//メソッド呼び出し
        [self performSelector:@selector(goNext) withObject:nil afterDelay:1.0];//メソッドの遅延実行

      
    }
    else if(en==6){
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"負け"];
    
    }
    
}



-(IBAction)go{
    zenntai++;
    watasi.image=[UIImage imageNamed:@"jyank1.png"];

    mine=1;
    en=arc4random()% 6;
   
    if (en>=2 && en<=4) {
        aite.image = [UIImage imageNamed:@"jyank3.png"];

        result.text=[NSString stringWithFormat:@"負け"];
        
        }
    else if (en>=0 && en<=1){
        aite.image = [UIImage imageNamed:@"jyank1.png"];

        result.text=[NSString stringWithFormat:@"アイコ"];
          }
    else if (en>=5 && en<=6){
          syousuu++;
        aite.image = [UIImage imageNamed:@"jyank2.png"];

        result.text=[NSString stringWithFormat:@"勝ち"];
        [self.won play];
        if (self.won.isPlaying == YES) {
            NSLog(@"鳴ってる");
        }
        [self slept];//メソッド呼び出し
        [self performSelector:@selector(goNext) withObject:nil afterDelay:1.0];//メソッドの遅延実行
    }
}

-(IBAction)idou{
    syouritu= syousuu/zenntai*100;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSLog(@"%f",syouritu);
    [userDefaults setInteger:syouritu forKey:@"age"];
    [userDefaults setInteger:syousuu forKey:@"kati"];
    [userDefaults synchronize];//即時保存
    [self performSegueWithIdentifier:@"Win" sender:nil];
}
-(void)slept{
    guu.hidden=YES;
    tyoki.hidden=YES;
    paa.hidden=YES;
}//メソッド

- (void)goNext {
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self presentViewController:secondViewController animated:YES completion:nil];
}




@end
