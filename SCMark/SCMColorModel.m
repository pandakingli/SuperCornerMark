//
//  SCMColorModel.m
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "SCMColorModel.h"

@implementation SCMColorModel
+ (SCMColorModel*) createDefaultModel
{
    SCMColorModel *cModel = [[SCMColorModel alloc]init];

    cModel.margin_top    = 5;
    cModel.margin_bottom = 5;
    cModel.margin_left   = 3;
    cModel.margin_right  = 3;
    cModel.cornerRadius  = 4;
    
    return cModel;
}
@end
