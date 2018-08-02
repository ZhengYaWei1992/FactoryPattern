//
//  SubFactory.m
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "SubFactory.h"
#import "OperateSub.h"
@implementation SubFactory
+ (Operate *)createOperate{
    return [[OperateSub alloc]init];
}
@end
