//
//  ScreensManagerImpl.m
//  Electrum
//
//  Created by Jasf on 19.03.2018.
//  Copyright © 2018 Freedom. All rights reserved.
//

#import "ScreensManagerImpl.h"
#import "EnterOrCreateWalletViewController.h"
#import "CreateWalletViewController.h"
#import "AppDelegate.h"

@implementation ScreensManagerImpl {
}

@synthesize window;

#pragma mark - Initialization

#pragma mark - Overriden Methods - ScreensManager
- (void)showCreateWalletViewController:(id)handler {
    dispatch_async(dispatch_get_main_queue(), ^{
        UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"CreateWalletViewController"
                                                             bundle:nil];
        CreateWalletViewController *viewController = (CreateWalletViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        viewController.handler = (id<CreateWalletHandlerProtocol>)handler;
        [navigationController pushViewController:viewController animated:YES];
    });
}

- (void)showEnterOrCreateWalletViewController:(id)handler {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self createWindowIfNeeded];
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"EnterOrCreateWalletViewController"
                                                             bundle:nil];
        UINavigationController *navigationController = (UINavigationController *)[storyboard instantiateViewControllerWithIdentifier:@"NavigationController"];
        EnterOrCreateWalletViewController *viewController = (EnterOrCreateWalletViewController *)navigationController.topViewController;
        viewController.handler = (id<EnterOrCreateWalletHandlerProtocol>)handler;
        self.window.rootViewController = navigationController;
    });
}

#pragma mark - Private Methods
- (void)createWindowIfNeeded {
    if (self.window) {
        return;
    }
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [UIViewController new];
    [self.window makeKeyAndVisible];
}

@end
