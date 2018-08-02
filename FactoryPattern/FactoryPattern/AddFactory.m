//
//  AddFactory.m
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "AddFactory.h"
#import "OperateAdd.h"
@implementation AddFactory
+ (Operate *)createOperate{
    return [[OperateAdd alloc]init];
}

@end
