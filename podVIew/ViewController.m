//
//  ViewController.m
//  podVIew
//
//  Created by MyMac on 2016/11/16.
//  Copyright © 2016年 hengshuimofangkeji. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+KNSemiModal.h"
#import "PodViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 200, 40, 30);
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)buttonClick:(UIButton *)button{
    NSDictionary * dict = @{@"asd":@"123"};

    UIView * podView = [[UIView alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 250)];
    podView.backgroundColor = [UIColor purpleColor];
    podView.alpha = 0.7;
    [self presentSemiView:podView withOptions:dict];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
