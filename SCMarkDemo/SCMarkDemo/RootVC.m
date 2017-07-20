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
    
    SCMColorModel *cModel = [[SCMColorModel alloc]init];
    cModel.display_name = @"左上角标";
    cModel.background_color = [UIColor redColor];
    cModel.text_color = [UIColor blueColor];
    [self.mView show_up_left_markWithModel:cModel];
    
    
    SCMColorModel *rcModel = [[SCMColorModel alloc]init];
    rcModel.display_name = @"右上角标";
    rcModel.background_color = [UIColor redColor];
    rcModel.text_color = [UIColor blueColor];
    [self.mView show_up_right_markWithModel:rcModel];
    
    SCMColorModel *rdModel = [[SCMColorModel alloc]init];
    rdModel.display_name = @"右下 21:10";
    rdModel.background_color = [UIColor grayColor];
    rdModel.text_color = [UIColor whiteColor];
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
