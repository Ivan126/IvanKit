//
//  IvanEncoder.h
//  IvanKit
//
//  Created by Ivan on 2016/11/24.
//  Copyright © 2016年 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IvanEncoder : NSObject

+ (void)EncodeUInt8ToData:(NSMutableData *)data value:(UInt8)value;

+ (void)EncodeUInt16ToData:(NSMutableData *)data value:(UInt16)value convertToNetworkOrder:(BOOL)flag;

+ (void)EncodeUInt32ToData:(NSMutableData *)data value:(UInt32)value convertToNetworkOrder:(BOOL)flag;

+ (void)EncodeUInt64ToData:(NSMutableData *)data value:(UInt64)value convertToNetworkOrder:(BOOL)flag;

+ (void)EncodeUInt16ToData:(NSMutableData *)data value:(UInt16)value;

+ (void)EncodeUInt32ToData:(NSMutableData *)data value:(UInt32)value;

+ (void)EncodeUInt64ToData:(NSMutableData *)data value:(UInt64)value;

+ (void)EncodeLength:(NSMutableData *)data;

+ (void)ResetLength:(NSMutableData *)data;

+ (void)EncodeOrder:(NSMutableData *)data;

+ (void)EncodeChecksum:(NSMutableData *)data;

+ (void)LogByte:(NSMutableData *)data;

@end
