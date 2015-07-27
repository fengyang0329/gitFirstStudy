//
//  HoomViewController.h
//  Test
//
//  Created by Youth on 14-5-22.
//  Copyright (c) 2014年 frontop. All rights reserved.
//

#import <UIKit/UIKit.h>
void (^PlayFinishedBlock)(int) ;

@interface HoomViewController : UIViewController
{
    NSTimer *theTimer;
    BOOL flag;
    UIButton *btn;
}
@end
