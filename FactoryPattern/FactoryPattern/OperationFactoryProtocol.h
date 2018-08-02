//
//  OperationFactoryProtocol.h
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Operate;
@protocol OperationFactoryProtocol <NSObject>
+ (Operate *)createOperate;
@end
