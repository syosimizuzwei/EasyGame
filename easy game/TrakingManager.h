//
//  TrakingManager.h
//  easy game
//
//  Created by Syotaro Shimizu on 2015/06/18.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrackingManager : NSObject

// スクリーン名計測用メソッド
+ (void)sendScreenTracking:(NSString *)screenName;

// イベント計測用メソッド
+ (void)sendEventTracking:(NSString *)category action:(NSString *)action label:(NSString *)label value:(NSNumber *)value screen:(NSString *)screen;

@end