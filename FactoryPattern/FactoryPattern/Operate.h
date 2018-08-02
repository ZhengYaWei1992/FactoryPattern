//
//  Operate.h
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Operate : NSObject
@property(nonatomic,assign)CGFloat numOne;
@property(nonatomic,assign)CGFloat numTwo;
- (CGFloat)getResult;
@end
