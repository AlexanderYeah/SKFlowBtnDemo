//
//  ViewController.m
//  SKFlowBtnFrame
//
//  Created by TrimbleZhang on 2018/11/16.
//  Copyright © 2018 AlexanderYeah. All rights reserved.
//

#import "ViewController.h"
#import "SKTagFrame.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     NSMutableArray *tagsArr = [NSMutableArray arrayWithObjects:@"+添加标签", @"有苦有乐",@"人生是充实的",@"有得有失",@"的人生是公平的",@"人生是合理的",@"美好一天",@"从“恒心”开始",@"坎坷的路上，虽然艰辛",@"梦想总会花开",@"有苦有乐",@"人生是充实的",@"有得有失",@"的人生是公平的",@"人生是合理的",@"美好一天",@"从“恒心”开始",@"坎坷的路上，虽然艰辛",@"梦想总会花开",nil];
    
    
    SKTagFrame *frame = [[SKTagFrame alloc] init];
    frame.tagsArray = tagsArr;
    
    CGFloat first_H = 0;
    CGFloat total_H = 0;
    for (NSInteger i=0; i< tagsArr.count; i++) {
        UIButton *tagsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [tagsBtn setTitle:tagsArr[i] forState:UIControlStateNormal];
     
        
        if (i == 0) {
            tagsBtn.backgroundColor = [UIColor whiteColor];
            tagsBtn.layer.borderWidth = 1;
            tagsBtn.layer.borderColor = [UIColor colorWithRed:56/255.0f green:160/255.0f blue:255/255.0f alpha:1].CGColor;
            
            [tagsBtn addTarget:self action:@selector(addTagBtnClick) forControlEvents:UIControlEventTouchUpInside];
            
        }else{
            tagsBtn.backgroundColor = [[UIColor colorWithRed:56/255.0f green:160/255.0f blue:255/255.0f alpha:1] colorWithAlphaComponent:0.1];
            
        }
        
        [tagsBtn setTitleColor:[UIColor colorWithRed:56/255.0f green:160/255.0f blue:255/255.0f alpha:1] forState:UIControlStateNormal];
        tagsBtn.titleLabel.font = [UIFont systemFontOfSize:13.f];
        
        
        tagsBtn.layer.cornerRadius = 1.2;
        tagsBtn.layer.masksToBounds = YES;
        CGRect orgRect = CGRectFromString(frame.tagsFrames[i]);
        // 向下偏移60px
        CGRect resRect = CGRectMake(orgRect.origin.x, orgRect.origin.y + 65, orgRect.size.width, orgRect.size.height);
        if (i == 0) {
            first_H = orgRect.origin.y + orgRect.size.height;
        }
        total_H = orgRect.origin.y + orgRect.size.height;
        // 此处控制显示2行
//        if (total_H > first_H * 2) {
//            tagsBtn.hidden = YES;
//            return;
//        }
        // 只显示两行
        tagsBtn.frame = resRect;
        [self.view addSubview:tagsBtn];
    }
    
    
}


// 添加标签点击事件
- (void)addTagBtnClick{
    NSLog(@"点击了");
}


@end
