//
//  DepartmentUser.h
//  FactoryPattern
//
//  Created by yunshan on 2018/8/2.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Department;
@protocol DepartmentProtocol <NSObject>
- (void)insertDepartment:(Department *)department;

@end
