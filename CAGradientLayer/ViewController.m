//
//  ViewController.m
//  test1
//
//  Created by jia yu on 2021/12/31.
//

#import "ViewController.h"
#import "UITestView.h"

@interface ViewController (){
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITestView *v = [[UITestView alloc] initWithFrame:CGRectMake(0.f, 0.f, 700.f, 400.f)];
    v.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:v];
    
}


@end
