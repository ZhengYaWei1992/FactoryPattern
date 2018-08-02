//
//  AccessFactory.m
//  FactoryPattern
//
//  Created by yunshan on 2018/8/2.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory
- (id<UserProtocol>)createUserDB{
    return [[AccessUser alloc] init];
}

- (id<DepartmentProtocol>)createDepartmentDB{
    return [[AccessDepartment alloc] init];
}

@end
