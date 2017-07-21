//
//  RootVC.m
//  SCMark
//
//  Created by lining on 2017/7/15.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "RootVC.h"
#import "SCMark.h"
#import <UIImageView+WebCache.h>
#import <biu_SHColor/SHColor.h>
@interface RootVC ()
@property(nonatomic,strong) UIImageView* mView;
@end

@implementation RootVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    self.mView = [[UIImageView alloc]initWithFrame:(CGRect){0,0,300,300}];
    self.mView.center = self.view.center;
    self.mView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.mView];
    
    NSString *s = @"http://p3.music.126.net/lMXmZrEKZOPWa-sm8xsuHA==/1415071466291401.jpg";
    NSURL *url = [NSURL URLWithString:s];

    SCMColorModel *cModel   = [SCMColorModel createDefaultModel];
    cModel.display_name     = @"左上角标";
    cModel.background_color = ColorByHexStr(@"#7ff8b0b7");
    cModel.text_color       = ColorByHexStr(@"#008080");
    
    [self.mView show_up_left_markWithModel:cModel];

    SCMColorModel *ldcModel   = [SCMColorModel createDefaultModel];
    ldcModel.display_name     = @"左下角标";
    ldcModel.background_color = ColorByHexStr(@"#7ff8b0b7");
    ldcModel.text_color       = ColorByHexStr(@"#008080");
    
    [self.mView show_down_left_markWithModel:ldcModel];
    

    SCMColorModel *rcModel   = [SCMColorModel createDefaultModel];
    rcModel.display_name     = @"右上角标";
    rcModel.background_color = ColorByHexStr(@"#7ff8b0b7");
    rcModel.text_color       = ColorByHexStr(@"#008080");
    
    [self.mView show_up_right_markWithModel:rcModel];

    SCMColorModel *rdModel   = [SCMColorModel createDefaultModel];
    rdModel.display_name     = @"右下 21:10";
    rdModel.background_color = ColorByHexStr(@"#7ff8b0b7");
    rdModel.text_color       = ColorByHexStr(@"#008080");
                               
    [self.mView show_down_right_markWithModel:rdModel];

    
    [self.mView sd_setImageWithURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
