//
//  ViewController.h
//  easy game
//
//  Created by Syotaro Shimizu on 2014/12/24.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
       IBOutlet UILabel *result;
    IBOutlet UIImageView *aite;
    IBOutlet UIImageView *watasi;
    int mine;
    int en;
    float zenntai;
    float syousuu;
    float syouritu;
   }

-(IBAction)go;
-(IBAction)pa;
-(IBAction)tyo;
-(IBAction)idou;
@end

