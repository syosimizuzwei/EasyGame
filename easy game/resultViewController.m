//
//  resultViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2015/01/10.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "resultViewController.h"

@interface resultViewController ()

@end

@implementation resultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"kannsei" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    self.won = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    [self.won play];
    if (self.won.isPlaying == YES) {
        NSLog(@"鳴ってる");
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(IBAction)back{
    [self.presentingViewController.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion: NULL];
}

@end
