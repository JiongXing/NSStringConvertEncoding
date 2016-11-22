//
//  main.m
//  NSStringConvertEncodingDemo
//
//  Created by JiongXing on 2016/11/22.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+ConvertEncoding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *gbk = @"C4E3BAC3";
        NSString *characters = [gbk convertToGBKCharacters];
        NSLog(@"把十六进制GBK编码转成文字:%@ --> %@", gbk, characters);
        
        characters = @"你好";
        gbk = [characters convertToGBKCode];
        NSLog(@"把文字转成十六进制GBK编码:%@ --> %@", characters, gbk);
        
        NSString *utf8 = @"E6849FE8B0A2";
        characters = [utf8 convertToUTF8Characters];
        NSLog(@"把十六进制UTF8编码转成文字:%@ --> %@", utf8, characters);
        
        characters = @"感谢";
        utf8 = [characters convertToUTF8Code];
        NSLog(@"把文字转成十六进制UTF8编码:%@ --> %@", characters, utf8);
    }
    return 0;
}

