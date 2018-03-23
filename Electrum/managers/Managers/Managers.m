//
//  Managers.m
//  Electrum
//
//  Created by Jasf on 19.03.2018.
//  Copyright © 2018 Freedom. All rights reserved.
//

#import "Managers.h"
#import "ScreensManagerImpl.h"
#import "AlertManagerImpl.h"

@implementation Managers

#pragma mark - Public Static Methods
+ (instancetype)shared {
    static Managers *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [Managers new];
    });
    return shared;
}

#pragma mark - Public Methods
- (id<ScreensManager>)screensManager {
    static ScreensManagerImpl *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[ScreensManagerImpl alloc] initWithAlertManager:self.alertManager];
    });
    return shared;
}

- (id<AlertManager>)alertManager {
    static AlertManagerImpl *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[AlertManagerImpl alloc] init];
    });
    return shared;
}

- (NSString *)documentsDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = paths.firstObject;
    return basePath;
}

@end
