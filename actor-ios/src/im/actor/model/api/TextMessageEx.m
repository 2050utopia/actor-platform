//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/TextMessageEx.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/TextMessageEx.h"
#include "im/actor/model/api/TextMessageExUnsupported.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation ImActorModelApiTextMessageEx

+ (ImActorModelApiTextMessageEx *)fromBytesWithInt:(jint)key
                                     withByteArray:(IOSByteArray *)content {
  return ImActorModelApiTextMessageEx_fromBytesWithInt_withByteArray_(key, content);
}

- (instancetype)init {
  return [super init];
}

@end

ImActorModelApiTextMessageEx *ImActorModelApiTextMessageEx_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content) {
  ImActorModelApiTextMessageEx_init();
  switch (key) {
    default:
    return [[ImActorModelApiTextMessageExUnsupported alloc] initWithInt:key withByteArray:content];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiTextMessageEx)