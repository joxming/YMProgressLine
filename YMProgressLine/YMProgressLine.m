//
//  YMProgressLine.m
//  OCWeiBo
//
//  Created by mimi on 16/7/21.
//  Copyright © 2016年 mimi. All rights reserved.
//

#import "YMProgressLine.h"

@interface YMProgressLine ()

@property(nonatomic,assign) BOOL isAnim;
@property(nonatomic,strong) NSTimer* timer;

@end

@implementation YMProgressLine

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    self.isAnim = YES;

}

//开始读条
-(void)startAnim{
    
    self.progress = 0;
    self.hidden = NO;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1/60 target:self selector:@selector(valueChanged) userInfo:nil repeats:YES];
    
}

//计时器监听

-(void)valueChanged{
    
    if (_isAnim) {
        self.progress += 0.05;
        if ( self.progress >= 0.95) {
            self.progress = 0.95;
        }
        
        
    }else{
        if (self.progress == 1) {
            self.hidden = YES;
            [_timer invalidate];
        }else{
            self.progress += 0.5;
        }
        
    }
    
}

//结束读条
-(void)endAnim{
    
    self.isAnim = NO;
    
}
//设置读条颜色
-(void)setColorWith:(UIColor*)color{
    self.tintColor = color;
}

@end
