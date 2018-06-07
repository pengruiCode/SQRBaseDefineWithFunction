//
//  TestModel.m
//  SQRCommonToolsProject
//
//  Created by macMini on 2018/5/28.
//  Copyright © 2018年 PR. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel

- (id)initWithCoder: (NSCoder *)coder {
    if (self == [super init]) {
        self.userId = [coder decodeObjectForKey:@"userId"];
    }
    return self;
}


- (void)encodeWithCoder: (NSCoder *)coder {
    [coder encodeObject:self.userId forKey:@"userId"];
}

@end
