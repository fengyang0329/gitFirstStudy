//
//  HoomViewController.m
//  Test
//
//  Created by Youth on 14-5-22.
//  Copyright (c) 2014年 frontop. All rights reserved.
//

#import "HoomViewController.h"


@interface HoomViewController ()
{
    UIImageView *imageV;
}
@end

@implementation HoomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
           }
    return self;
}
-(void)viewDidAppear:(BOOL)animated
{

    
//                            _ooOoo_
//                           o8888888o
//                           88" . "88
//                           (| -_- |)
//                            O\ = /O
//                        ____/`---'\____
//                      .   ' \\| |// `.
//                       / \\||| : |||// \
//                     / _||||| -:- |||||- \
//                       | | \\\ - /// | |
//                     | \_| ''\---/'' | |
//                      \ .-\__ `-` ___/-. /
//                   ___`. .' /--.--\ `. . __
//                ."" '< `.___\_<|>_/___.' >'"".
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |
//                 \ \ `-. \_ __\ /__ _/ .-` / /
//         ======`-.____`-.___\_____/___.-`____.-'======
//                            `=---='
//
//         .............................................
//                  佛祖镇楼                  BUG辟易
//          佛曰:
//                  写字楼里写字间，写字间里程序员；
//                  程序人员写程序，又拿程序换酒钱。
//                  酒醒只在网上坐，酒醉还来网下眠；
//                  酒醉酒醒日复日，网上网下年复年。
//                  但愿老死电脑间，不愿鞠躬老板前；
//                  奔驰宝马贵者趣，公交自行程序员。
//                  别人笑我忒疯癫，我笑自己命太贱；
//                  不见满街漂亮妹，哪个归得程序员？
    
    
    
    
//                       .::::.
//                     .::::::::.
//                    :::::::::::
//                 ..:::::::::::'
//              '::::::::::::'
//                .::::::::::
//           '::::::::::::::..
//                ..::::::::::::.
//              ``::::::::::::::::
//               ::::``:::::::::'        .:::.
//              ::::'   ':::::'       .::::::::.
//            .::::'      ::::     .:::::::'::::.
//           .:::'       :::::  .:::::::::' ':::::.
//          .::'        :::::.:::::::::'      ':::::.
//         .::'         ::::::::::::::'         ``::::.
//     ...:::           ::::::::::::'              ``::.
//    ```` ':.          ':::::::::'                  ::::..
//                       '.:::::'                    ':'````..
//
//
    
    /*
     Bttt+::+IVVMMMMMMRR:‘
     　　  ,YVYItMYti+i++:X+Rt:tXMR,
     　　 .YRiIYRMViitVXRWRYMI++++iMM..
     　　　.Y+,.,X::,,,YMMMMMMMMRVItXMti
     　　　 :X+:,X:,. .,iiIRMWMMMBBRMMBY.
     　　　　tR+:I:i:+Y:IitYVYMMMMMMMMRi.
     　　　　.+RXt:,::.::XXIBMMMMMMMMM+:
     　　　　　,RRXitY+,.::RWMMMMMMMMt.
     　　　　　　VYI:::,..:tVMMMMMMBY+.
     　　　　　 .VBBW:::::,i.MMMMMBi:.
     　　　　　 .tWRRVi:::.X:VMMMMMMY.
     　　　　 ,+i+:,XYtt+:,i:,MMMBR:
     　　...VV..:..:.tt::++:+,RMYMV.
     　:M:::..:,.:,,,.+t+++Ytt.,+:
     <Rt:,.:,.:,:.:+.,:++tit,
     \Xt:,:,:.:.,,+,:+YRY,
     　:++:::.,:.:.::+:iMi
     　 ,Ri:::,:::::::+Ii'
     　 ,+:Xii:,,::I:tit,
     　　 :BBt,:+::,::i+
     　　 :BWXX::::::iX.
     　　 :BWVIi++t+:V+
     　　　WBXtItii+iWI.
     　　　:MWIYIti+iVRY,
     　　　 RBXVYItiiIYXWI,
     　　　 :MRWWVYttttIIXWt.
     　　　 .XMBRRXIti++itIXW,
     　　　　.BMBBRVIi+::+ttXX:.
     　　　　 ,MMBRXYti:::+tIW::M
     　　　　　tMMRWYti+++ittXV;U|
     　　　　　 +MRVYti+++ittWIOO`
     　　　　　.VMWVtiiiiiitIRPO/
     　　　　 .XBBWVttttttttXRv:
     　　　 .,WBRBXVtttttttIWt;
     　　　 :RWXWBXYtttttttYR:
     　　 .iRWVIiBWYIttttttYW,
     　　.tWVYti:WRVIttittIVV　　　   __==__
     　　tWVIi++:XRVIIttttIXY　    ..:i:tittV,
     　 tXYti+++tWRVYttittYWIiIYYVItt:iXW+....
     　:WIt+++iXRBBVYItitIYXXYti+iIYt++:IMRi:.
     :Xti+:+tRWt:BVYItitIYWVIIIYXXWXVXYt+i+IV:
     .tYi+::IWI:::BVVItitIXBRVIt:::::::tIVXRiXt
     :Viii++i:itIXBXVttitVW,　　　　　　　 tBIX
     .IiXIttIVRBRBIItttIRX　　　　　　　　 :VX
     ,XWPWV~   RXXItiYRV　　　　　　　　　^|
     　　　　　　 ,BWYi+IRX
     　　　　　　　tBYiitWB,
     　　　　　　　.WVtiiIRI
     　　　　　　　 VWtiiiIB,
     　　　　　　　 ,BIiiiiWt
     　　　　　　　 .BViiiiYV
     　　　　　　　　XXtii+YV
     　　　　　　　　iRiii+YY
     　　　　　　　　:Btii+XI
     　　　　　　　　 Wtii+R:
     　　　　　　　　 XY+t+B.
     　　　　　　　　 YX+tYR.
     　　　　　　　　 tX+iWV
     　　　　　　　　 iXi+RI
     　　　　　　　　 tYiIXX
     　　　　　　　　,XtiIXRt.
     　　　　　　　　:BIVYRWIV
     　　　　　　　　+RYXXWiYR.
     　　　　　　　_oiWIVYPtXMV
     　　　　  __=+YItRtyuyuyyM+
     　　　　 <yuykgyyBWtt:X:B}
     美女保佑 永无bug
     
     */
    
    
    [super viewDidAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

//
////    UIImage *ima = [UIImage imageNamed:@"qingjing1-1"];
//    btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setBackgroundColor:[UIColor redColor]];
//    [btn setFrame:CGRectMake(50, 50, 60, 60)];
////    [btn setImage:ima forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    [self kkWithBlock:^(int tag){
        [self kkkTag:tag];
    }];

}
- (void)kkWithBlock:(void (^)(int))completion
{
    NSLog(@"kkWithBlock");
    if (completion)
    {
        PlayFinishedBlock = completion;
    }
    [self kkk];
}

- (void)kkk
{
    NSLog(@"kkk");
    if (PlayFinishedBlock)
    {
        NSLog(@"h");
        PlayFinishedBlock(2);
    }
}
- (void)kkkTag:(int)tag
{
    NSLog(@"tag:%d",tag);
}

- (void)test
{
    CATransition *animation = [CATransition animation];
    animation.duration = 0.5;
    animation.subtype = kCATransitionFromTop;
    animation.type = @"push";
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.view.layer addAnimation:animation forKey:@"animation"];
    btn.hidden = YES;
//    [btn removeFromSuperview];
}

- (CAAnimation *) animationRotate {
    CATransform3D rotationTransform  = CATransform3DMakeRotation( M_PI , 0 , -1, 0 );
    CABasicAnimation* animation;
    animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.toValue = [NSValue valueWithCATransform3D:rotationTransform];
    animation.duration = 4.0;
    animation.autoreverses = YES;
    animation.cumulative = YES;
    animation.repeatCount = 1;
    animation.beginTime = 0.1;
    animation.delegate = self;
    return animation;
}

- (void)buttonAnimation:(id) sender{
    UIButton *theButton = sender;
    CAAnimation *myAnimationRotate = [self animationRotate];
    CAAnimationGroup* m_pGroupAnimation;
    m_pGroupAnimation = [CAAnimationGroup animation];
    m_pGroupAnimation.delegate = self;
    m_pGroupAnimation.removedOnCompletion = NO;
    m_pGroupAnimation.duration = 10;
    m_pGroupAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    m_pGroupAnimation.repeatCount = 1;
    m_pGroupAnimation.fillMode = kCAFillModeForwards;
    m_pGroupAnimation.animations = [NSArray arrayWithObjects:myAnimationRotate, nil];
    [theButton.layer addAnimation:m_pGroupAnimation forKey:@"animationRotate"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    //todo
}

- (void)clickedViewWithJump
{
      __weak HoomViewController *block_self = self;
    //消失
    [self setBlurViewAndJianBianViewShow:NO WithEndBlock:^(BOOL finished){
        
        if (finished)
       {
         
            [block_self.view setBackgroundColor:[UIColor redColor]];
       }
    }];
}
//模糊层和渐变层出现和消失
- (void)setBlurViewAndJianBianViewShow:(BOOL)_isShow WithEndBlock:(void (^)(BOOL finish))completion
{
    [UIView animateWithDuration:0.3 animations:^{
        [self.view setBackgroundColor:[UIColor greenColor]];
        
    }completion:^(BOOL finished){
        if (finished)
        {
            completion(1);
        }
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
