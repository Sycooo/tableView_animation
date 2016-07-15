//
//  ViewController.m
//  TableViewAnimation
//
//  Created by yiming li on 16/7/8.
//  Copyright © 2016年 sycooo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    cell.layer.transform = CATransform3DMakeRotation(-M_PI/2, 0, 0, 1);
    
    cell.layer.bounds = CGRectMake(0, 0, 0, 0);
    
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        cell.layer.bounds = CGRectMake(0, 0, self.view.frame.size.width, 100);
        
    } completion:^(BOOL finished) {
        
    }];
    
    
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        
    } completion:^(BOOL finished) {
        
    }];
//    cell.alpha = 0;
    
    [UIView animateWithDuration:1 animations:^{
        
//        cell.layer.transform = CATransform3DMakeRotation(M_PI/2, 0, 0, 0);
        
//        cell.layer.bounds = CGRectMake(0, 0, self.view.frame.size.width, 100);
        
//        cell.alpha = 1;
        
    }];
    

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:@"pic.jpg"];
    cell.textLabel.text = [NSString stringWithFormat:@"xxxxxxxxxxxxx%ld",(long)indexPath.row];
    return cell;
    
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
