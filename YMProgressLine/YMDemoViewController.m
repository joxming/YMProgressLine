//
//  YMDemoViewController.m
//  YMProgressLine
//
//  Created by mimi on 16/7/21.
//  Copyright © 2016年 mimi. All rights reserved.
//

#import "YMDemoViewController.h"
#import "YMProgressLine.h"

@interface YMDemoViewController ()

@property(nonatomic,strong)YMProgressLine* progressView;

@end

@implementation YMDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.progressView];
    
    //设置颜色
    [self.progressView setColorWith:[UIColor redColor]];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.progressView startAnim];
}



-(YMProgressLine *)progressView{
    if (_progressView == nil) {
        
        _progressView = [[YMProgressLine alloc]initWithFrame:CGRectMake(0, 100, 200, 2)];
    }
    return _progressView;
}

@end
