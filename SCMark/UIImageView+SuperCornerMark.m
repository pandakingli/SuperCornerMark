//
//  UIImageView+SuperCornerMark.m
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "UIImageView+SuperCornerMark.h"
#import "objc/runtime.h"

#define Font_Default            [UIFont systemFontOfSize:10]
#define TextColor_Default       [UIColor blackColor]
#define BackgroundColor_Default [UIColor clearColor]

static char kUpLeftCMark;

@implementation UIImageView (SuperCornerMark)

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
        [self addSubview:self.upLeftCMark];
    }
    
    self.upLeftCMark.hidden = !cModel;
    self.upLeftCMark.text = cModel.display_name;
    self.upLeftCMark.textColor = cModel.text_color?:TextColor_Default;
    self.upLeftCMark.backgroundColor = cModel.background_color?:BackgroundColor_Default;
    self.clipsToBounds = TRUE;
}
@end
