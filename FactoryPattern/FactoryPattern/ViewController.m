//
//  ViewController.m
//  FactoryPattern
//
//  Created by 郑亚伟 on 2018/7/26.
//  Copyright © 2018年 zhengyawei. All rights reserved.
//

#import "ViewController.h"
#import "Operate.h"
#import "OperateFactory.h"

#import "AddFactory.h"
#import "SubFactory.h"


#import "User.h"
#import "Department.h"

#import "SqlServerUser.h"
#import "SqlServerDepartment.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

#import "SqlServerFactory.h"
#import "AccessFactory.h"

#import "DBFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self simpleFactoryTest];
    [self factoryTest];
    [self abstractFactory];
}
//简单工厂
- (void)simpleFactoryTest{
    Operate *operate = [OperateFactory createOperateWithStr:@"+"];
    operate.numOne = 1;
    operate.numTwo = 2;
    NSLog(@"%f",[operate getResult]);
}
//工厂模式
- (void)factoryTest{
    Operate *operateAdd = [AddFactory createOperate];
    operateAdd.numOne = 1;
    operateAdd.numTwo = 2;
    NSLog(@"%f",[operateAdd getResult]);
}
//抽象工厂
- (void)abstractFactory{
    //=============改进前=============
    User *user = [[User alloc] init];
    user.userName = @"郑亚伟";
    Department *department = [[Department alloc] init];
    department.departmentName = @"开发";
    
    //下面这两行代码可以任意选择，代码的其他部分无需任何改动
    SqlServerFactory *dbFactory = [[SqlServerFactory alloc] init];
    //AccessFactory *dbFactory = [[AccessFactory alloc] init];
    //实际上这里写的有点不好，不应该用协议，使用继承会更为合理。使用继承就不会产生方法的连续调用
    [[dbFactory createUserDB] insertUser:user];
    [[dbFactory createDepartmentDB] insertDepartment:department];
    
    
    //=============简单工厂改进后=============
    //实际上这里写的有点不好，不应该用协议，使用继承会更为合理。使用继承就不会产生方法的连续调用
    [[DBFactory createUserDB] insertUser:user];
    [[DBFactory createDepartmentDB] insertDepartment:department];
    //用简单工厂优化后的代码，只要在DBFactory.m文件中，设置 db 字符串内容即可。
    
}



@end
