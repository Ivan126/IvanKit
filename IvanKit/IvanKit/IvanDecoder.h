//
//  IvanDecoder.h
//  IvanKit
//
//  Created by Ivan on 2016/11/24.
//  Copyright © 2016年 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IvanDecoder : NSObject

+ (UInt8)DecodeUInt8FromData:(NSData *)data atOffset:(unsigned int)offset;

+ (UInt16)DecodeUInt16FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag;

+ (UInt32)DecodeUInt32FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag;

+ (UInt64)DecodeUInt64FromData:(NSData *)data atOffset:(unsigned int)offset convertFromNetworkOrder:(BOOL)flag;


+ (UInt16)DecodeUInt16FromData:(NSData *)data atOffset:(unsigned int)offset;

+ (UInt32)DecodeUInt32FromData:(NSData *)data atOffset:(unsigned int)offset;

+ (UInt64)DecodeUInt64FromData:(NSData *)data atOffset:(unsigned int)offset;

+ (BOOL)DecodeBOOLFromUInt8:(UInt8)value bitLocation:(unsigned int)bitLocation;

+ (BOOL)DecodeBOOLFromUInt16:(UInt16)value bitLocation:(unsigned int)bitLocation;

+ (BOOL)DecodeBOOLFromUInt32:(UInt32)value bitLocation:(unsigned int)bitLocation;

+ (BOOL)DecodeBOOLFromUInt64:(UInt64)value bitLocation:(unsigned int)bitLocation;

@end
