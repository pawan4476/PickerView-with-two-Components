//
//  ViewController.h
//  test3
//
//  Created by chaitanya on 30/08/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerview;
@property (nonatomic, strong) NSArray* pickerData;
@property (nonatomic, strong) NSArray* pickerData2;


@end

