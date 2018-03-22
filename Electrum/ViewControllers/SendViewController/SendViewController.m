//
//  SendViewController.m
//  Electrum
//
//  Created by Jasf on 22.03.2018.
//  Copyright © 2018 Freedom. All rights reserved.
//

#import "SendViewController.h"

@interface SendViewController ()

@end

@implementation SendViewController

- (void)viewDidLoad {
    NSCParameterAssert(_handler);
    NSCParameterAssert(_screensManager);
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Observers
- (IBAction)menuTapped:(id)sender {
    [_screensManager showMenuViewController];
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
