//
//  SecondViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2014/12/24.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    label.text=[NSString stringWithFormat:@""];
    // Do any additional setup after loading the view.
    
    [self createGestureRecognizers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    i=0;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//ene=0うえ
//１した
//２みぎ
//３ひだり




- (void)createGestureRecognizers {

      UISwipeGestureRecognizer *rightSwipeGesture = [[UISwipeGestureRecognizer alloc]
                                                initWithTarget:self action:@selector(handleSwipeGesture:)];
      rightSwipeGesture.direction = UISwipeGestureRecognizerDirectionRight;
      rightSwipeGesture.numberOfTouchesRequired = 1;
      [self.view addGestureRecognizer:rightSwipeGesture];
    
    UISwipeGestureRecognizer *leftSwipeGesture = [[UISwipeGestureRecognizer alloc]
                                                   initWithTarget:self action:@selector(handleSwipeGesture:)];
    leftSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    leftSwipeGesture.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:leftSwipeGesture];
    
    UISwipeGestureRecognizer *upSwipeGesture = [[UISwipeGestureRecognizer alloc]
                                                   initWithTarget:self action:@selector(handleSwipeGesture:)];
    upSwipeGesture.direction = UISwipeGestureRecognizerDirectionUp;
    upSwipeGesture.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:upSwipeGesture];
    
    UISwipeGestureRecognizer *downSwipeGesture = [[UISwipeGestureRecognizer alloc]
                                                   initWithTarget:self action:@selector(handleSwipeGesture:)];
    downSwipeGesture.direction = UISwipeGestureRecognizerDirectionDown;
    downSwipeGesture.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:downSwipeGesture];

}


- (void)handleSwipeGesture:(id)sender {
    
    NSLog(@"%@", [sender valueForKey:@"direction"]);
    

    switch ([[sender valueForKey:@"direction"] intValue]) {
        case 4:
            //上
            ene=0;
            break;
        case 2:
            ene=1;
            //左
            break;
        case 8:
            ene=2;
            //下
            break;
        case 1:
            ene=3;
            //右
            break;
            
        default:
            break;
    }
}

- (void)handleRotateGesture:(id)sender {
    UIRotationGestureRecognizer *rotate = (UIRotationGestureRecognizer*)sender;
    CGFloat rotation = [rotate rotation];
    CGFloat velocity = [rotate velocity];
    
    NSLog(@"rotate. rotation: %f, velocity: %f", rotation, velocity);
}

- (void)handleLongPressGesture:(id)sender {
    NSLog(@"Long press.");
}





-(IBAction)upbutton{
   

    if (i==1) {
        upbt.hidden=YES;
    }
    else{
    my=0;
    ene=arc4random()% 4;
    if (ene==0) {
        label.text=[NSString stringWithFormat:@"勝ち"];
        kao.image = [UIImage imageNamed:@"ue.png"];

    
    }
    else if(ene==1) {
        kao.image = [UIImage imageNamed:@"sita.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==2) {
        kao.image = [UIImage imageNamed:@"migi.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==3) {
        kao.image = [UIImage imageNamed:@"hidari.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    i=1;

    
    NSTimer *myTimer =
    [NSTimer scheduledTimerWithTimeInterval:1.5f  //タイマーを発生させる間隔
                                     target:self//タイマー発生時に呼び出すメソッドがあるターゲット
                                   selector:@selector(timerCall:) //タイマー発生時に呼び出すメソッド
                                   userInfo:nil //selectorに渡す情報(NSDictionary)
                                    repeats:YES //リピート
     ];

   
    }    // 処理を記述
    
    }
-(IBAction)downbutton{
    
    if (i==1) {
        downbt.hidden=YES;
    }
    else{
    my=1;
    ene=arc4random()% 4;
    if (ene==0) {
        label.text=[NSString stringWithFormat:@"外れ"];
        kao.image = [UIImage imageNamed:@"ue.png"];
        
        
    }
    else if(ene==1) {
        kao.image = [UIImage imageNamed:@"sita.png"];
        label.text=[NSString stringWithFormat:@"勝ち"];
    }
    else if(ene==2) {
        kao.image = [UIImage imageNamed:@"migi.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==3) {
        kao.image = [UIImage imageNamed:@"hidari.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    i=1;
    
    NSTimer *myTimer =
    [NSTimer scheduledTimerWithTimeInterval:1.5f //タイマーを発生させる間隔
                                     target:self//タイマー発生時に呼び出すメソッドがあるターゲット
                                   selector:@selector(timerCall:) //タイマー発生時に呼び出すメソッド
                                   userInfo:nil //selectorに渡す情報(NSDictionary)
                                    repeats:YES //リピート
     ];
    }
}
-(IBAction)rightbutton{
    if (i==1) {
        rightbt.hidden=YES;
    }
    else{
    
    
    my=2;
    ene=arc4random()% 4;
    if (ene==0) {
        label.text=[NSString stringWithFormat:@"外れ"];
        kao.image = [UIImage imageNamed:@"ue.png"];
        
        
    }
    else if(ene==1) {
        kao.image = [UIImage imageNamed:@"sita.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==2) {
        kao.image = [UIImage imageNamed:@"migi.png"];
        label.text=[NSString stringWithFormat:@"勝ち"];
    }
    else if(ene==3) {
        kao.image = [UIImage imageNamed:@"hidari.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    i=1;
    NSTimer *myTimer =
    [NSTimer scheduledTimerWithTimeInterval:1.5f //タイマーを発生させる間隔
                                     target:self//タイマー発生時に呼び出すメソッドがあるターゲット
                                   selector:@selector(timerCall:) //タイマー発生時に呼び出すメソッド
                                   userInfo:nil //selectorに渡す情報(NSDictionary)
                                    repeats:YES //リピート
     ];
    }
    }
-(IBAction)leftbutton{
    
    if (i == 1) {
        leftbt.hidden=YES;
        }
    else{
        label.text=[NSString stringWithFormat:@"外れ"];
        kao.image = [UIImage imageNamed:@"ue.png"];
    my=3;
    ene=arc4random()% 4;
    if (ene==0) {
        
        
        
        
    }
    else if(ene==1) {
        kao.image = [UIImage imageNamed:@"sita.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==2) {
        kao.image = [UIImage imageNamed:@"migi.png"];
        label.text=[NSString stringWithFormat:@"外れ"];
    }
    else if(ene==3) {
        kao.image = [UIImage imageNamed:@"hidari.png"];
        label.text=[NSString stringWithFormat:@"勝ち"];
        
    }
     i=1;
    
    NSTimer *myTimer =
    [NSTimer scheduledTimerWithTimeInterval:1.5f //タイマーを発生させる間隔
                                     target:self//タイマー発生時に呼び出すメソッドがあるターゲット
                                   selector:@selector(timerCall:) //タイマー発生時に呼び出すメソッド
                                   userInfo:nil //selectorに渡す情報(NSDictionary)
                                    repeats:YES //リピート
     ];
    }
}


-(void)timerCall:(NSTimer*)timer
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
