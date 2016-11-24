//
//  IvanEncoder.m
//  IvanKit
//
//  Created by Ivan on 2016/11/24.
//  Copyright © 2016年 Ivan. All rights reserved.
//

#import "IvanEncoder.h"

@implementation IvanEncoder

static UInt16 order = 0;

+ (void)EncodeUInt8ToData:(NSMutableData *)data value:(UInt8)value
{
    [data appendBytes:&value length:1];
}

+ (void)EncodeUInt16ToData:(NSMutableData *)data value:(UInt16)value convertToNetworkOrder:(BOOL)flag
{
    if(flag)
    {
        UInt16 temp = htons(value);
        [data appendBytes:&temp length:2];
    }
    else
    {
        [data appendBytes:&value length:2];
    }
    
}

+ (void)EncodeUInt32ToData:(NSMutableData *)data value:(UInt32)value convertToNetworkOrder:(BOOL)flag
{
    if(flag)
    {
        UInt32 temp = htonl(value);
        [data appendBytes:&temp length:4];
    }
    else
    {
        [data appendBytes:&value length:4];
    }
}

+ (void)EncodeUInt64ToData:(NSMutableData *)data value:(UInt64)value convertToNetworkOrder:(BOOL)flag
{
    if(flag)
    {
        UInt64 temp = htonll(value);
        [data appendBytes:&temp length:8];
    }
    else
    {
        [data appendBytes:&value length:8];
    }
}

+ (void)EncodeUInt16ToData:(NSMutableData *)data value:(UInt16)value
{
    [self EncodeUInt16ToData:data value:value convertToNetworkOrder:YES];
}

+ (void)EncodeUInt32ToData:(NSMutableData *)data value:(UInt32)value
{
    [self EncodeUInt32ToData:data value:value convertToNetworkOrder:YES];
}

+ (void)EncodeUInt64ToData:(NSMutableData *)data value:(UInt64)value
{
    [self EncodeUInt64ToData:data value:value convertToNetworkOrder:YES];
}

+ (void)EncodeLength:(NSMutableData *)data
{
    [self EncodeUInt8ToData:data value:0];
}

+ (void)ResetLength:(NSMutableData *)data
{
    UInt8 length = (UInt8)data.length + 1;
    [data replaceBytesInRange:NSMakeRange(1, 1) withBytes:&length];
}

+(UInt16)GetOrder
{
    return order++;
}

+ (void)EncodeOrder:(NSMutableData *)data
{
    UInt16 theOrder = [self GetOrder];
    [self EncodeUInt16ToData:data value:theOrder convertToNetworkOrder:YES];
}

+ (void)EncodeChecksum:(NSMutableData *)data
{
    UInt8 theChecksum = 0;
    for(NSUInteger n = 0; n < [data length]; n++)
    {
        UInt8 *pResult = (UInt8 *)([data bytes] + n);
        UInt8 result = *pResult;
        
        theChecksum += result;
    }
    [data appendBytes:&theChecksum length:1];
}

+ (void)LogByte:(NSMutableData *)data
{
    NSMutableString *result = [NSMutableString string];
    const char *bytes = [data bytes];
    for (int i = 0; i < [data length]; i++)
    {
        [result appendFormat:@"%02hhx ", (unsigned char)bytes[i]];
    }
    NSLog(@"data:%@", result);
}

@end
