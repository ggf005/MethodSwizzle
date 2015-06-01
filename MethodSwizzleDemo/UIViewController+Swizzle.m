//
//  UIViewController+Swizzle.m
//  MethodSwizzleDemo
//
//  Created by gongguifei on 15/6/1.
//  Copyright (c) 2015年 Gong Guifei. All rights reserved.
//

#import "UIViewController+Swizzle.h"
#import "NSObject+Swizzle.h"

@implementation UIViewController (Swizzle)

+ (void)load
{
   [self exchangeSelector:@selector(viewDidLoad) withSelector:@selector(swizzleViewDidLoad)];
    
}

- (void)swizzleViewDidLoad
{
    //swizzleViewDidLoad与viewDidLoad方法的实现已经被替换，此处相关于调用 [self viewDidLoad];
    //如果没有此句代码，则本类的viewDidLoad方法将不会被调用。
    [self swizzleViewDidLoad];
    
    //除了日志可以做些其它通用化处理，比如设置背景色。
    NSLog(@"swizzleViewDidLoad");
}
@end
