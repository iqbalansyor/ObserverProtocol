//
//  ViewController.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (strong, nonatomic) ViewModel *viewModel;
@property (assign, nonatomic) NSInteger count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViewModel];
}

- (void)dealloc {
    
}

- (void)configureViewModel {
    self.count = 0;
    self.viewModel = [ViewModel new];
    
    __weak typeof(self) weakSelf = self;
    [self.viewModel.labelStrings subscribe:self block:^(NSString *oldValue, NSString *newValue) {
        weakSelf.firstLabel.text = newValue;
        weakSelf.secondLabel.text = newValue;
    }];
}

- (IBAction)tapNormalButton:(id)sender {
    [self.viewModel tapNormalButton];
    
    self.count += 1;
    if (self.count == 4) {
        [self.viewModel.labelStrings unsubscribe:self];
    }
}

- (IBAction)tapTappedButton:(id)sender {
    [self.viewModel tapTappedButton];
}

- (IBAction)tapNext:(id)sender {
    UIViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
