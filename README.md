# SuperCornerMark
智能角标，方便设置角标。

## How To Use

### Podfile

```
platform :ios,'8.0'

target "Demo" do

pod 'biu_SCMark','1.0.3'

end

```

使用：

```
#import <biu_SCMark/SCMark.h>
...
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

```

效果图：

![角标.png](http://upload-images.jianshu.io/upload_images/4374748-2172685f9d6dba34.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)