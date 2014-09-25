//
//  ACViewController.m
//  Autocorrect
//
//  Created by Chad on 9/24/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ACViewController.h"

NSInteger const count = 5; // equal to # of images

@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * count, self.view.frame.size.height);
    scrollView.pagingEnabled = YES;
    
    for (int i = 1; i <= count; i++) {
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake((i - 1) * self.view.frame.size.width + 20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);
        
        imageView.contentMode = UIViewContentModeScaleAspectFit; // makes images not stretched
        
        [scrollView addSubview:imageView];
    }
    
    

    
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
