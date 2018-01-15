//
//  ViewController.m
//  LottieTest
//
//  Created by 常峻玮 on 2018/1/14.
//  Copyright © 2018年 mingle. All rights reserved.
//

#import "ViewController.h"
#import <Lottie/Lottie.h>
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (nonatomic, strong)LOTAnimationView *animationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.animationView = [LOTAnimationView animationNamed:@"data"];
    self.animationView.backgroundColor = [UIColor blackColor];
    self.animationView.loopAnimation = YES;
    self.animationView.autoReverseAnimation = YES;
    [self.view addSubview:self.animationView];
    [self.animationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.mas_equalTo(self.view);
        make.height.mas_equalTo(self.animationView.mas_width);
//        make.edges.mas_equalTo(self.view);
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@",NSStringFromCGRect(self.animationView.frame));
    [self.animationView play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
