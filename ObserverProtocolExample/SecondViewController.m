//
//  SecondViewController.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 03/12/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondViewModel.h"
#import "TVLObservable.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) SecondViewModel *viewModel;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [SecondViewModel new];
    
    __weak typeof(self) weakSelf = self;
    [self.viewModel.labelString subscribe:self block:^(NSString *oldValue, NSString *newValue) {
        weakSelf.label.text = newValue;
    }];
}


- (IBAction)tapSecondButton:(id)sender {
    [self.viewModel tapSecondButton];
}

@end
