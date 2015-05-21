//
//  ViewController.m
//  TestSharingData
//
//  Created by Dang Thanh Than on 5/20/15.
//  Copyright (c) 2015 Than Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblText;
@property (weak, nonatomic) IBOutlet UITextField *txtInput;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveUserInfo:(id)sender {
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.apide.sharingdata"];
    [userDefaults setObject:self.txtInput.text forKey:@"userInput"];
    [userDefaults synchronize];
    self.lblText.text = self.txtInput.text;
}



@end
