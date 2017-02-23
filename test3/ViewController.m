//
//  ViewController.m
//  test3
//
//  Created by chaitanya on 30/08/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSArray* array = [[NSArray alloc]initWithObjects:@"hii", @"hello", @"welcome", nil];
    _pickerData = [[NSArray alloc]initWithObjects:@"Karnataka", @"Tamil", @"Gujarath", nil];
    _pickerData2 = [[NSArray alloc]initWithObjects:@"Bangalore", @"Chenni", @"Gandinagar", nil];
    
    _pickerview.dataSource = self;
    _pickerview.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return _pickerData.count;
    } else {
        return _pickerData2.count;
    }

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return _pickerData[row];
    } else {
        return _pickerData2[row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if ([pickerView selectedRowInComponent:0] == [pickerView selectedRowInComponent:1]) {
        UIAlertController* alertCntl = [UIAlertController alertControllerWithTitle:@"" message:@"Both are matched" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil];
        [alertCntl addAction:action];
        
        [self presentViewController:alertCntl animated:true completion:nil];
        
    }
}
@end
