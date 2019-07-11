//
//  ViewController.m
//  XBImageManager
//
//  Created by xxb on 2019/7/11.
//  Copyright © 2019 xxb. All rights reserved.
//

#import "ViewController.h"
#import "XBImageManager.h"
#import "UIImageView+webImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 100, 100)];
    [self.view addSubview:imageView];
    [[XBImageManager sharedManager] getImageWith:@"https://www.baidu.com/img/bd_logo1.png?qua=high&where=super" completeBlock:^(UIImage *image) {
        imageView.image = image;
    }];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(120, 100, 100, 100)];
    [self.view addSubview:imageView2];
    [[XBImageManager sharedManager] getImageWith:@"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=914098589,2376292293&fm=58" completeBlock:^(UIImage *image) {
        imageView2.image = image;
    }];
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 210, 100, 100)];
    [self.view addSubview:imageView3];
    [imageView3 setImageWithUrlStr:@"https://cdn2.jianshu.io/assets/web/nav-logo-4c7bbafe27adc892f3046e6978459bac.png" placeholderImage:[UIImage imageNamed:@"bgimg"]];
}


@end
