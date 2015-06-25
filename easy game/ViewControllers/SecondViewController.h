//
//  SecondViewController.h
//  easy game
//
//  Created by Syotaro Shimizu on 2014/12/24.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface SecondViewController : UIViewController{
    int my;
    int ene;
    IBOutlet UILabel *label;
    IBOutlet UIImageView*kao;
    IBOutlet UIButton*upbt;
    IBOutlet UIButton*downbt;
    IBOutlet UIButton *rightbt;
    IBOutlet UIButton*leftbt;
    int i;
}
-(IBAction)upbutton;
-(IBAction)downbutton;
-(IBAction)rightbutton;
-(IBAction)leftbutton;
@property AVAudioPlayer *won;
-(IBAction)swioe;
@end
