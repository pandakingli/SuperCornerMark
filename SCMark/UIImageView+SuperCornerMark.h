//
//  UIImageView+SuperCornerMark.h
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCMColorModel.h"

@interface UIImageView (SuperCornerMark)


/**
 隐藏所有角标
 */
-(void)hideAllMarks;

/**
 左上角角标

 @param cModel 文字颜色Model
 */
-(void)show_up_left_markWithModel:(SCMColorModel*)cModel;

/**
 左下角角标
 
 @param cModel 文字颜色Model
 */
-(void)show_down_left_markWithModel:(SCMColorModel*)cModel;

/**
 右上角角标

 @param cModel 文字颜色Model
 */
-(void)show_up_right_markWithModel:(SCMColorModel*)cModel;


/**
 右下角角标

 @param cModel 文字颜色Model
 */
-(void)show_down_right_markWithModel:(SCMColorModel*)cModel;
@end
