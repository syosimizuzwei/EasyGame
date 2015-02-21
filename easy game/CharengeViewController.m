//
//  CharengeViewController.m
//  easy game
//
//  Created by Syotaro Shimizu on 2015/01/10.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "CharengeViewController.h"
#import "resultViewController.h"

@interface CharengeViewController ()

@end

@implementation CharengeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    muzukasisa = [userDefaults integerForKey:@"hard"];
}

-(IBAction)tyos{
    
    jibunn.image = [UIImage imageNamed:@"jyank2.png"];
im=1;
    enemys=arc4random()% 3;
    if (enemys==0) {
        rennsyou++;
                teki.image = [UIImage imageNamed:@"jyank3.png"];
        result.text=[NSString stringWithFormat:@"勝ち"];
        if(muzukasisa==1){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }
        if(muzukasisa==2){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }
        
        if(muzukasisa==3){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }
//        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
//        [self presentViewController:secondViewController animated:YES completion:nil];
//        
        
        
        
    }
    else if (enemys==1){
        rennsyou=0;
        teki.image = [UIImage imageNamed:@"jyank1.png"];
        result.text=[NSString stringWithFormat:@"負け"];
    }
    else if (enemys==2){
        rennsyou=0;
        teki.image = [UIImage imageNamed:@"jyank2.png"];
        
        result.text=[NSString stringWithFormat:@"アイコ"];
        
        
        
    }
    rennsyousuu.text=[NSString stringWithFormat:@"%d連勝",rennsyou];
}


-(IBAction)pas{
    
    jibunn.image = [UIImage imageNamed:@"jyank3.png"];
    
    im=1;
    enemys=arc4random()% 3;
    
    if (enemys==0) {
        rennsyou=0;
        teki.image = [UIImage imageNamed:@"jyank3.png"];
        
        result.text=[NSString stringWithFormat:@"アイコ"];
        
        
        
    }
    else if (enemys==1){
        rennsyou++;
        teki.image = [UIImage imageNamed:@"jyank1.png"];
        
        result.text=[NSString stringWithFormat:@"勝ち"];
        if(muzukasisa==1){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
            
            }
        }
        if(muzukasisa==2){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }

        if(muzukasisa==3){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }

//        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
//        [self presentViewController:secondViewController animated:YES completion:nil];
//        
        
        
    }
    else if(enemys==2){
        rennsyou=0;
        teki.image = [UIImage imageNamed:@"jyank2.png"];
        
        result.text=[NSString stringWithFormat:@"負け"];
        
    }
     rennsyousuu.text=[NSString stringWithFormat:@"%d連勝",rennsyou];
}


-(IBAction)gos{
   
    jibunn.image=[UIImage imageNamed:@"jyank1.png"];
    
    im=1;
    enemys=arc4random()% 3;
    
    if (enemys==0) {
        teki.image = [UIImage imageNamed:@"jyank3.png"];
        rennsyou=0;
        result.text=[NSString stringWithFormat:@"負け"];
        
    }
    else if (enemys==1){
        teki.image = [UIImage imageNamed:@"jyank1.png"];
        rennsyou=0;
        result.text=[NSString stringWithFormat:@"アイコ"];
    }
    else if (enemys==2){
        
        teki.image = [UIImage imageNamed:@"jyank2.png"];
        rennsyou++;
      result.text=[NSString stringWithFormat:@"勝ち"];
        if(muzukasisa==1){
            if(rennsyou==1){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
            
            }
        }
        if(muzukasisa==2){
            if(rennsyou==3){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }
        
        if(muzukasisa==3){
            if(rennsyou==5){
                resultViewController *res = [self.storyboard instantiateViewControllerWithIdentifier:@"result"];
                [self presentViewController:res animated:YES completion:nil];
                
                
                
            }
        }

//        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
//        [self presentViewController:secondViewController animated:YES completion:nil];
    }
     rennsyousuu.text=[NSString stringWithFormat:@"%d連勝",rennsyou];
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
