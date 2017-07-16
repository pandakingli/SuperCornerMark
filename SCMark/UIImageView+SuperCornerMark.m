//
//  UIImageView+SuperCornerMark.m
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "UIImageView+SuperCornerMark.h"
#import "objc/runtime.h"

#define Font_Default            [UIFont systemFontOfSize:15]
#define TextColor_Default       [UIColor blackColor]
#define BackgroundColor_Default [UIColor clearColor]

static char kUpLeftCMark;
static char kUpRightCMark;
static char kDownRightCMark;

@implementation UIImageView (SuperCornerMark)

#pragma --左上角角标
-(UILabel*)upLeftCMark
{
    return  objc_getAssociatedObject(self, &kUpLeftCMark);
}

-(void)setUpLeftCMark:(UILabel*)mark
{
    return  objc_setAssociatedObject(self, &kUpLeftCMark, mark, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)show_up_left_markWithModel:(SCMColorModel*)cModel
{

    if (!cModel)
    {
        if (self.upLeftCMark)
        {
            self.upLeftCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.upLeftCMark)
    {
        CGRect rect = (CGRect){0,0,100,17};
        self.upLeftCMark = [[UILabel alloc]initWithFrame:rect];
        self.upLeftCMark.textAlignment = NSTextAlignmentCenter;
        self.upLeftCMark.font = Font_Default;
        self.upLeftCMark.layer.cornerRadius = 4.0f;
        self.upLeftCMark.layer.masksToBounds = YES;
        [self addSubview:self.upLeftCMark];
    }
    
    self.upLeftCMark.hidden = !cModel;
    self.upLeftCMark.text = cModel.display_name;
    self.upLeftCMark.textColor = cModel.text_color?:TextColor_Default;
    self.upLeftCMark.backgroundColor = cModel.background_color?:BackgroundColor_Default;
    self.clipsToBounds = TRUE;
    
    [self.upLeftCMark sizeToFit];
    CGFloat x,y,w,h;
    w = CGRectGetWidth(self.upLeftCMark.frame)+5;
    h = CGRectGetHeight(self.upLeftCMark.frame);
    
    x = 0;
    y = 5;
   
    
    self.upLeftCMark.frame = (CGRect){x,y,w,h};
}

#pragma --右上角角标
-(UILabel*)upRightCMark
{
    return  objc_getAssociatedObject(self, &kUpRightCMark);
}

-(void)setUpRightCMark:(UILabel*)mark
{
    return  objc_setAssociatedObject(self, &kUpRightCMark, mark, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)show_up_right_markWithModel:(SCMColorModel*)cModel
{
    
    if (!cModel)
    {
        if (self.upRightCMark)
        {
            self.upRightCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.upRightCMark)
    {
        CGRect rect = (CGRect){0,0,100,17};
        self.upRightCMark = [[UILabel alloc]initWithFrame:rect];
        self.upRightCMark.textAlignment = NSTextAlignmentCenter;
        self.upRightCMark.font = Font_Default;
        self.upRightCMark.layer.cornerRadius = 4.0f;
        self.upRightCMark.layer.masksToBounds = YES;
        [self addSubview:self.upRightCMark];
    }
    
    self.upRightCMark.hidden = !cModel;
    self.upRightCMark.text = cModel.display_name;
    self.upRightCMark.textColor = cModel.text_color?:TextColor_Default;
    self.upRightCMark.backgroundColor = cModel.background_color?:BackgroundColor_Default;
    self.clipsToBounds = TRUE;
    
    [self.upRightCMark sizeToFit];
    CGFloat x,y,w,h;
    w = CGRectGetWidth(self.upRightCMark.frame)+5;
    h = CGRectGetHeight(self.upRightCMark.frame);
    x = self.bounds.size.width-w;
    y = 5;
    
    
    self.upRightCMark.frame = (CGRect){x,y,w,h};
    
}

#pragma --右下角角标
-(UILabel*)downRightCMark
{
    return  objc_getAssociatedObject(self, &kDownRightCMark);
}

-(void)setDownRightCMark:(UILabel*)mark
{
    return  objc_setAssociatedObject(self, &kDownRightCMark, mark, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)show_down_right_markWithModel:(SCMColorModel*)cModel
{
    
    if (!cModel)
    {
        if (self.downRightCMark)
        {
            self.downRightCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.downRightCMark)
    {
        CGRect rect = (CGRect){0,0,100,17};
        self.downRightCMark = [[UILabel alloc]initWithFrame:rect];
        self.downRightCMark.textAlignment = NSTextAlignmentCenter;
        self.downRightCMark.font = Font_Default;
        self.downRightCMark.layer.cornerRadius = 4.0f;
        self.downRightCMark.layer.masksToBounds = YES;
        [self addSubview:self.downRightCMark];
    }
    
    self.downRightCMark.hidden = !cModel;
    self.downRightCMark.text = cModel.display_name;
    self.downRightCMark.textColor = cModel.text_color?:TextColor_Default;
    self.downRightCMark.backgroundColor = cModel.background_color?:BackgroundColor_Default;
    self.clipsToBounds = TRUE;
    
    [self.downRightCMark sizeToFit];
    CGFloat x,y,w,h;
    w = CGRectGetWidth(self.downRightCMark.frame)+5;
    h = CGRectGetHeight(self.downRightCMark.frame);
    x = self.bounds.size.width-w-2;
    y = self.bounds.size.height-h-5;
    
    
    self.downRightCMark.frame = (CGRect){x,y,w,h};
    
}
@end
