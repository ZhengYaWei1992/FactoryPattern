//
//  DBFactory.m
//  FactoryPattern
//
//  Created by yunshan on 2018/8/2.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "DBFactory.h"
#import "SqlServerUser.h"
#import "SqlServerDepartment.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

//实际开发中只要改变这里即可
//static NSString * db = @"sqlServer";
static NSString *const db = @"access";

@implementation DBFactory

+ (id <UserProtocol>)createUserDB{
    if ([db isEqualToString:@"sqlServer"]) {
        return [[SqlServerUser alloc] init];
    }else{
        return [[AccessUser alloc] init];
    }
}
+ (id <DepartmentProtocol>)createDepartmentDB{
    if ([db isEqualToString:@"sqlServer"]) {
        return [[SqlServerDepartment alloc] init];
    }else{
        return [[AccessDepartment alloc] init];
    }
}

@end
