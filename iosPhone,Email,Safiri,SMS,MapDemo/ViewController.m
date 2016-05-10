//
//  ViewController.m
//  iosPhone,Email,Safiri,SMS,MapDemo
//
//  Created by bean on 16/2/24.
//  Copyright © 2016年 com.xile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * arr = @[@"浏览器",@"地图",@"电话",@"短信",@"Email"];
    for (int i = 0; i<arr.count; i++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(65*i, 100, 60, 100);
        btn.backgroundColor = [UIColor redColor];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:arr[i] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        btn.tag = i + 1;
    }
    
}

-(void)click:(UIButton*)btn
{
    switch (btn.tag) {
        case 1:
        {
            NSURL * url = [NSURL URLWithString:@"http://www.baidu.com"];
            [[UIApplication sharedApplication]openURL:url];
        }
            break;
        case 2:
        {
            NSString * position = @"北京大学";
            position = [position stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            NSString * urlSyr = [NSString stringWithFormat:@"http://maps.google.com/maps?q=%@",position];
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:urlSyr]];
        }
            break;
        case 3:
        {
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tel://13121212121"]];
        }
            break;
        case 4:
        {
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"sms://13121212121"]];
        }
            break;
        case 5:
        {
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"mailto://383708669@qq.com"]];
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
