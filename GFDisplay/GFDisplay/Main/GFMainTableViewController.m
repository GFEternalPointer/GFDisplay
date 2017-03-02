//
//  GFMainTableViewController.m
//  GFDisplay
//
//  Created by apple on 16/2/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "GFMainTableViewController.h"

@interface GFMainTableViewController ()

@property (strong, nonatomic) NSArray *demos;

@end

@implementation GFMainTableViewController
#pragma mark - 懒加载
- (NSArray *)demos {
    if (_demos == nil) {
        _demos = @[@"腾讯视频Demo--简书:永恒之针"];
    }

    return _demos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - tableView数据源
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.demos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }

    cell.textLabel.text = self.demos[indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{

            [self performSegueWithIdentifier:@"GFTXViewController" sender:nil];

            break;
        }
    }
}

@end
