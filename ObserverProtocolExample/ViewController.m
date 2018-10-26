//
//  ViewController.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (strong, nonatomic) ViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViewModel];
}

- (void)dealloc {
    
}

- (void)configureViewModel {
    self.viewModel = [ViewModel new];
    
    [self.viewModel.labelStrings subscribe:@"" block:^(NSString *oldValue, NSString *newValue) {
        self.firstLabel.text = newValue;
        self.secondLabel.text = newValue;
    }];
}

- (IBAction)buttonTapped:(id)sender {
    [self.viewModel buttonTapped];
}

@end
