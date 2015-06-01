//
//  NSObject+Swizzle.h
//  
//
//  Created by gongguifei on 15/6/1.
//  Copyright (c) 2015年 Gong Guifei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzle)

/*
 *  相互替换两个方法的实现
 */
+ (void)exchangeSelector:(SEL)selector1 withSelector:(SEL)selecotr2;

/*
 *  使用一个方法来替换另外一个
 */
+ (void)replaceSelector:(SEL)oriSelector withSelector:(SEL)selecotr;
@end
