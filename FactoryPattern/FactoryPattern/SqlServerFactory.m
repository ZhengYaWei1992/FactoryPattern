//
//  SqlServerFactory.m
//  FactoryPattern
//
//  Created by yunshan on 2018/8/2.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "SqlServerFactory.h"
#import "SqlServerUser.h"
#import "SqlServerDepartment.h"

@implementation SqlServerFactory

- (id<UserProtocol>)createUserDB{
    return [[SqlServerUser alloc] init];
}

- (id<DepartmentProtocol>)createDepartmentDB{
    return [[SqlServerDepartment alloc] init];
}
@end
