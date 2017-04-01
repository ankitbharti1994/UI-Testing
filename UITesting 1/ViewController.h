//
//  ViewController.h
//  UITesting 1
//
//  Created by Ankit Bharti on 31/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL isSwitchOn;
}
- (IBAction)getSwitchValue:(UISwitch *)sender;

- (IBAction)goToDetailsPage:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *switchUI;

@end

