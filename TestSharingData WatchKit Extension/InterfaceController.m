//
//  InterfaceController.m
//  TestSharingData WatchKit Extension
//
//  Created by Dang Thanh Than on 5/20/15.
//  Copyright (c) 2015 Than Dang. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblResult;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)showInfo {
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.apide.sharingdata"];
    [userDefaults synchronize];
    self.lblResult.text = [userDefaults objectForKey:@"userInput"];
}



@end



