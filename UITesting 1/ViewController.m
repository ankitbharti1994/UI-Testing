//
//  ViewController.m
//  UITesting 1
//
//  Created by Ankit Bharti on 31/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *titleArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    titleArray=@[@"ankit",@"rohit",@"garima",@"sumit",@"kailash",@"aakriti",@"nitish"];
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

#pragma mark <UITableViewDataSource> method

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return titleArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text=[NSString stringWithFormat:@"%@",[titleArray objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark <UITableViewDelegate> method

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([[titleArray objectAtIndex:indexPath.row] isEqualToString:@"rohit"]) {
        
    }else {
        if (isSwitchOn) {
            [self performSegueWithIdentifier:@"goDetailedView" sender:nil];
        }
    }
}

@end
