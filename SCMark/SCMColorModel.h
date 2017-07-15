//
//  SCMColorModel.h
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SCMColorModel : NSObject


/**
 显示的文字
 */
@property(nonatomic,copy) NSString * display_name;

/**
 文字颜色
 */
@property(nonatomic,strong) UIColor * text_color;


/**
 背景颜色
 */
@property(nonatomic,strong) UIColor * background_color;

@end
