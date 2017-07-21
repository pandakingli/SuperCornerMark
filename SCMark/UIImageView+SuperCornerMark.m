//
//  UIImageView+SuperCornerMark.m
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "UIImageView+SuperCornerMark.h"
#import "objc/runtime.h"
#import "SCMarkUIConstants.h"

static char kUpLeftCMark;
static char kDownLeftCMark;
static char kUpRightCMark;
static char kDownRightCMark;

@implementation UIImageView (SuperCornerMark)

-(BOOL)checkcModel:(SCMColorModel*)cModel
{
    BOOL isOK = NO;
    
    if (!cModel||cModel.display_name.length<1||[cModel.display_name isEqualToString:@" "])
    {
        isOK = YES;
    }
    return isOK;
}

-(void)hideAllMarks
{
    [self show_up_left_markWithModel:nil];
    [self show_up_right_markWithModel:nil];
    [self show_down_right_markWithModel:nil];
    
}

-(UILabel*)createLabel
{
    
    CGRect rect = (CGRect){0,0,50,17};

    UILabel * lab           = [[UILabel alloc]initWithFrame:rect];
    lab.textAlignment       = NSTextAlignmentCenter;
    lab.font                = Font_Default;
    lab.layer.masksToBounds = YES;
    
    return lab;
}

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

    if ([self checkcModel:cModel])
    {
        if (self.upLeftCMark)
        {
            self.upLeftCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.upLeftCMark)
    {
        self.upLeftCMark = [self createLabel];
        [self addSubview:self.upLeftCMark];
    }

    self.upLeftCMark.hidden             = !cModel;
    self.upLeftCMark.text               = cModel.display_name;
    self.upLeftCMark.textColor          = cModel.text_color?:TextColor_Default;
    self.upLeftCMark.backgroundColor    = cModel.background_color?:BackgroundColor_Default;
    self.upLeftCMark.layer.cornerRadius = cModel.cornerRadius;
    self.clipsToBounds                  = TRUE;
    
    [self.upLeftCMark sizeToFit];
    
    CGFloat x,y,w,h;
    
    if (cModel.isNotFit)
    {
        w = cModel.markSize.width;
        h = cModel.markSize.height;;
    }
    else
    {
        w = CGRectGetWidth(self.upLeftCMark.frame)+FitWidth_Default;
        h = CGRectGetHeight(self.upLeftCMark.frame);
    }
 
    x = cModel.margin_left;
    y = cModel.margin_top;
   
    self.upLeftCMark.frame = (CGRect){x,y,w,h};
}

#pragma --左下角角标
-(UILabel*)downLeftCMark
{
    return  objc_getAssociatedObject(self, &kDownLeftCMark);
}

-(void)setDownLeftCMark:(UILabel*)mark
{
    return  objc_setAssociatedObject(self, &kDownLeftCMark, mark, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)show_down_left_markWithModel:(SCMColorModel*)cModel
{
    
    if ([self checkcModel:cModel])
    {
        if (self.downLeftCMark)
        {
            self.downLeftCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.downLeftCMark)
    {
        self.downLeftCMark = [self createLabel];
        [self addSubview:self.downLeftCMark];
    }

    self.downLeftCMark.hidden             = !cModel;
    self.downLeftCMark.text               = cModel.display_name;
    self.downLeftCMark.textColor          = cModel.text_color?:TextColor_Default;
    self.downLeftCMark.backgroundColor    = cModel.background_color?:BackgroundColor_Default;
    self.downLeftCMark.layer.cornerRadius = cModel.cornerRadius;
    self.clipsToBounds                    = TRUE;
    
    [self.downLeftCMark sizeToFit];
    
    CGFloat x,y,w,h;
    
    if (cModel.isNotFit)
    {
        w = cModel.markSize.width;
        h = cModel.markSize.height;;
    }
    else
    {
        w = CGRectGetWidth(self.upLeftCMark.frame)+FitWidth_Default;
        h = CGRectGetHeight(self.upLeftCMark.frame);
    }
    
    x = cModel.margin_left;
    y = self.bounds.size.height-h-cModel.margin_bottom;
    
    self.downLeftCMark.frame = (CGRect){x,y,w,h};
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
    
    if ([self checkcModel:cModel])
    {
        if (self.upRightCMark)
        {
            self.upRightCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.upRightCMark)
    {
        self.upRightCMark = [self createLabel];
        [self addSubview:self.upRightCMark];
    }

    self.upRightCMark.hidden             = !cModel;
    self.upRightCMark.text               = cModel.display_name;
    self.upRightCMark.textColor          = cModel.text_color?:TextColor_Default;
    self.upRightCMark.backgroundColor    = cModel.background_color?:BackgroundColor_Default;
    self.upRightCMark.layer.cornerRadius = cModel.cornerRadius;
    self.clipsToBounds                   = TRUE;
    
    [self.upRightCMark sizeToFit];
    CGFloat x,y,w,h;
   
    if (cModel.isNotFit)
    {
        w = cModel.markSize.width;
        h = cModel.markSize.height;;
    }
    else
    {
        w = CGRectGetWidth(self.upRightCMark.frame)+FitWidth_Default;
        h = CGRectGetHeight(self.upRightCMark.frame);
    }
    
    x = self.bounds.size.width-w-cModel.margin_right;
    y = cModel.margin_top;
    
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
    
    if ([self checkcModel:cModel])
    {
        if (self.downRightCMark)
        {
            self.downRightCMark.hidden = TRUE;
        }
        return;
    }
    
    if (!self.downRightCMark)
    {
        self.downRightCMark = [self createLabel];
        [self addSubview:self.downRightCMark];
    }

    self.downRightCMark.hidden             = !cModel;
    self.downRightCMark.text               = cModel.display_name;
    self.downRightCMark.textColor          = cModel.text_color?:TextColor_Default;
    self.downRightCMark.backgroundColor    = cModel.background_color?:BackgroundColor_Default;
    self.downRightCMark.layer.cornerRadius = cModel.cornerRadius;
    self.clipsToBounds                     = TRUE;

    [self.downRightCMark sizeToFit];
    CGFloat x,y,w,h;
    
    if (cModel.isNotFit)
    {
        w = cModel.markSize.width;
        h = cModel.markSize.height;;
    }
    else
    {
        w = CGRectGetWidth(self.upRightCMark.frame)+FitWidth_Default;
        h = CGRectGetHeight(self.upRightCMark.frame);
    }
    
    x = self.bounds.size.width-w-cModel.margin_right;
    y = self.bounds.size.height-h-cModel.margin_bottom;
    
    self.downRightCMark.frame = (CGRect){x,y,w,h};
    
}
@end
