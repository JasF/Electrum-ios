//
//  EnterOrCreateWalletViewController.h
//  Electrum
//
//  Created by Jasf on 19.03.2018.
//  Copyright © 2018 Freedom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RunLoop.h"

@protocol EnterOrCreateWalletHandlerProtocol <NSObject>
- (void)createWalletTapped:(id)aSelf;
@end

@interface EnterOrCreateWalletViewController : UITableViewController
@property (strong, nonatomic) id<EnterOrCreateWalletHandlerProtocol> handler;
@end
