//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateConfig.java
//

#ifndef _ImActorModelApiUpdatesUpdateConfig_H_
#define _ImActorModelApiUpdatesUpdateConfig_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiConfig;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateConfig_HEADER 42

@interface ImActorModelApiUpdatesUpdateConfig : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateConfig *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiConfig:(ImActorModelApiConfig *)config;

- (instancetype)init;

- (ImActorModelApiConfig *)getConfig;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateConfig)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateConfig *ImActorModelApiUpdatesUpdateConfig_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateConfig, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateConfig)

#endif // _ImActorModelApiUpdatesUpdateConfig_H_