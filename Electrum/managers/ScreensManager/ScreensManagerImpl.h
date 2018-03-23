//
//  ScreensManagerImpl.h
//  Electrum
//
//  Created by Jasf on 19.03.2018.
//  Copyright © 2018 Freedom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScreensManager.h"
#import "AlertManager.h"
#import "RunLoop.h"

@interface ScreensManagerImpl : NSObject <ScreensManager>
- (id)initWithAlertManager:(id<AlertManager>)alertManager;
@end
