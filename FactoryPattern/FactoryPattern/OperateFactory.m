//
//  OperateFactory.m
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "OperateFactory.h"
#import "OperateAdd.h"
#import "OperateSub.h"

@implementation OperateFactory
+ (Operate *)createOperateWithStr:(NSString *)str{
 
    if ([str isEqualToString:@"+"]) {
        OperateAdd *operateAdd = [[OperateAdd alloc] init];
        return operateAdd;
    }else if ([str isEqualToString:@"-"]){
        OperateSub *operateSub = [[OperateSub alloc] init];
        return operateSub;
    }else{
        return [[Operate alloc]init];
    }
}
@end
