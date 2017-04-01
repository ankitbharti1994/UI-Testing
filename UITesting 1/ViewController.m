//
//  ViewController.m
//  UITesting 1
//
//  Created by Ankit Bharti on 31/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    self->isSwitchOn=[self.switchUI isOn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)getSwitchValue:(UISwitch *)sender {
    self->isSwitchOn=[sender isOn];
}

- (IBAction)goToDetailsPage:(id)sender {
    if (self->isSwitchOn) {
        [self performSegueWithIdentifier:@"goDetailedView" sender:sender];
    }
}
@end
