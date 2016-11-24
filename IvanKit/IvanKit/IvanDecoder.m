//
//  IvanDecoder.m
//  IvanKit
//
//  Created by Ivan on 2016/11/24.
//  Copyright © 2016年 Ivan. All rights reserved.
//

#import "IvanDecoder.h"

@implementation IvanDecoder

+ (UInt8)DecodeUInt8FromData:(NSData *)data atOffset:(unsigned int)offset
{
    if([data length] < offset + 1)
    {
        return 0;
    }
    
    UInt8 *pResult = (UInt8 *)([data bytes] + offset);
    UInt8 result = *pResult;
    
    return result;
}

+ (UInt16)DecodeUInt16FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag
{
    if([data length] < offset + 2)
    {
        return 0;
    }
    
    UInt16 *pResult = (UInt16 *)([data bytes] + offset);
    UInt16 result = *pResult;
    
    if(flag)
    {
        return ntohs(result);
    }
    else
    {
        return result;
    }
}

+ (UInt32)DecodeUInt32FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag
{
    if([data length] < offset + 4)
    {
        return 0;
    }
    
    UInt32 *pResult = (UInt32 *)([data bytes] + offset);
    UInt32 result = *pResult;
    
    if(flag)
    {
        return ntohl(result);
    }
    else
    {
        return result;
    }
}

+ (UInt64)DecodeUInt64FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag
{
    if([data length] < offset + 8)
    {
        return 0;
    }
    
    UInt64 *pResult = (UInt64 *)([data bytes] + offset);
    UInt64 result = *pResult;
    
    if(flag)
    {
        return ntohll(result);
    }
    else
    {
        return result;
    }
}



+ (UInt16)DecodeUInt16FromData:(NSData *)data atOffset:(unsigned int)offset
{
    return [self DecodeUInt16FromData:data atOffset:offset convertFromNetworkOrder:YES];
}

+ (UInt32)DecodeUInt32FromData:(NSData *)data atOffset:(unsigned int)offset
{
    return [self DecodeUInt32FromData:data atOffset:offset convertFromNetworkOrder:YES];
}

+ (UInt64)DecodeUInt64FromData:(NSData *)data atOffset:(unsigned int)offset
{
    return [self DecodeUInt64FromData:data atOffset:offset convertFromNetworkOrder:YES];
}


+ (BOOL)DecodeBOOLFromUInt8:(UInt8)value bitLocation:(unsigned int)bitLocation
{
    value = value << (7 - bitLocation);
    value = value >> 7;
    return value;
}

+ (BOOL)DecodeBOOLFromUInt16:(UInt16)value bitLocation:(unsigned int)bitLocation
{
    value = value << (15 - bitLocation);
    value = value >> 15;
    return value;
}

+ (BOOL)DecodeBOOLFromUInt32:(UInt32)value bitLocation:(unsigned int)bitLocation
{
    value = value << (31 - bitLocation);
    value = value >> 31;
    return value;
}

+ (BOOL)DecodeBOOLFromUInt64:(UInt64)value bitLocation:(unsigned int)bitLocation
{
    value = value << (63 - bitLocation);
    value = value >> 63;
    return value;
}


@end
