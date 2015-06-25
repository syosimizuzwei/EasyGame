//
//  CharengeViewController.h
//  easy game
//
//  Created by Syotaro Shimizu on 2015/01/10.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharengeViewController : UIViewController
{
    IBOutlet UILabel *result;
    IBOutlet UIImageView *teki;
    IBOutlet UIImageView *jibunn;
    IBOutlet UILabel*rennsyousuu;
    int im;
    int enemys;
    int rennsyou;
    int muzukasisa;
}

-(IBAction)gos;
-(IBAction)pas;
-(IBAction)tyos;


@end
