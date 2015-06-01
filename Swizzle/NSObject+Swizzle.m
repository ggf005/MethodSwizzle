//
//  NSObject+Swizzle.m
//
//
//  Created by gongguifei on 15/6/1.
//  Copyright (c) 2015年 Gong Guifei. All rights reserved.
//

#import "NSObject+Swizzle.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzle)


+ (void)exchangeSelector:(SEL)selector1 withSelector:(SEL)selecotr2
{
    Method method1 = class_getInstanceMethod([self class], selector1);
    Method method2 = class_getInstanceMethod([self class], selecotr2);
    
    method_exchangeImplementations(method1, method2);
}


+ (void)replaceSelector:(SEL)oriSelector withSelector:(SEL)selecotr
{
    Method oriMethod = class_getInstanceMethod([self class], oriSelector);
    
    method_setImplementation(oriMethod, class_getMethodImplementation([self class], selecotr));
}

@end
