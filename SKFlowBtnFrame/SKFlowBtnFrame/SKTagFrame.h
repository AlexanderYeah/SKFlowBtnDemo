//
//  SKTagFrame.h
//  SKMoreBtnView
//
//  Created by TrimbleZhang on 2018/11/16.
//  Copyright © 2018 AlexanderYeah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define TagsTitleFont [UIFont systemFontOfSize:13]


NS_ASSUME_NONNULL_BEGIN

@interface SKTagFrame : NSObject

/** 标签名字数组 */
@property (nonatomic, strong) NSArray *tagsArray;
/** 标签frame数组 */
@property (nonatomic, strong) NSMutableArray *tagsFrames;
/** 全部标签的高度 */
@property (nonatomic, assign) CGFloat tagsHeight;
/** 标签间距 default is 10*/
@property (nonatomic, assign) CGFloat tagsMargin;
/** 标签行间距 default is 10*/
@property (nonatomic, assign) CGFloat tagsLineSpacing;
/** 标签最小内边距 default is 10*/
@property (nonatomic, assign) CGFloat tagsMinPadding;


@end

NS_ASSUME_NONNULL_END
