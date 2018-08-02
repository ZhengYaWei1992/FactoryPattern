//
//  DBFactory.h
//  FactoryPattern
//
//  Created by yunshan on 2018/8/2.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserProtocol.h"
#import "DepartmentProtocol.h"

@interface DBFactory : NSObject
+ (id <UserProtocol>)createUserDB;
+ (id <DepartmentProtocol>)createDepartmentDB;
@end
