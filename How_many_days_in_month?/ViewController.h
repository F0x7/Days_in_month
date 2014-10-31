//
//  ViewController.h
//  How_many_days_in_month?
//
//  Created by Fox Lis on 31.10.14.
//  Copyright (c) 2014 Fox Lis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSMutableArray *yearArray;
    NSArray *nameOfMonths;
    UIAlertView *allert;
    // привет коммит
    
}
@property (weak, nonatomic) IBOutlet UITextField *year;
@property (weak, nonatomic) IBOutlet UITextField *month;
@property (weak, nonatomic) IBOutlet UILabel *displeyDays;
- (IBAction)clearBtn:(id)sender;

- (IBAction)startBtn:(id)sender;

@end

