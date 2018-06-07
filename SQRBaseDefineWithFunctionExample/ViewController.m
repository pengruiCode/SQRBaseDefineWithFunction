//
//  ViewController.m
//  SQRBaseDefineWithFunction
//
//  Created by macMini on 2018/6/7.
//  Copyright © 2018年 PR. All rights reserved.
//

#import "ViewController.h"
#import "SQRDataSave.h"
#import "TestModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //枚举存取数据
    [SQRDataSave seveDataInUserDefaultsWithData:@"123456" dataEnum:SaveDataEnum_Session customKey:nil];
    NSLog(@"%@",[SQRDataSave takeOutDataFromDataEnum:SaveDataEnum_Session customKey:nil]);

    //自定义key存取数据
    [SQRDataSave seveDataInUserDefaultsWithData:@"654321" dataEnum:SaveDataEnum_Session customKey:@"sission"];
    NSLog(@"%@",[SQRDataSave takeOutDataFromDataEnum:SaveDataEnum_Session customKey:@"sission"]);

    //自定义对象模型存取
    TestModel *model = [TestModel new];
    model.userId = @"userId";
    [SQRDataSave seveDataKeyedUnarchiverInUserDefaultsWithData:model customKey:@"testModel"];

    TestModel *testModel = (TestModel *)[SQRDataSave takeOutDataKeyedUnarchiverFromCustomKey:@"testModel"];
    NSLog(@"%@",testModel.userId);
    
}





@end
