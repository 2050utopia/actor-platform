//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceEx.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/api/ServiceExChangedTitle.h"
#include "im/actor/model/api/ServiceExEmailContactRegistered.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/api/ServiceExUnsupported.h"
#include "im/actor/model/api/ServiceExUserAdded.h"
#include "im/actor/model/api/ServiceExUserKicked.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation ImActorModelApiServiceEx

+ (ImActorModelApiServiceEx *)fromBytesWithInt:(jint)key
                                 withByteArray:(IOSByteArray *)content {
  return ImActorModelApiServiceEx_fromBytesWithInt_withByteArray_(key, content);
}

- (instancetype)init {
  return [super init];
}

@end

ImActorModelApiServiceEx *ImActorModelApiServiceEx_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content) {
  ImActorModelApiServiceEx_init();
  switch (key) {
    case 1:
    return ((ImActorModelApiServiceExUserAdded *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExUserAdded alloc] init], content));
    case 2:
    return ((ImActorModelApiServiceExUserKicked *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExUserKicked alloc] init], content));
    case 3:
    return ((ImActorModelApiServiceExUserLeft *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExUserLeft alloc] init], content));
    case 4:
    return ((ImActorModelApiServiceExGroupCreated *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExGroupCreated alloc] init], content));
    case 5:
    return ((ImActorModelApiServiceExChangedTitle *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExChangedTitle alloc] init], content));
    case 6:
    return ((ImActorModelApiServiceExChangedAvatar *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExChangedAvatar alloc] init], content));
    case 7:
    return ((ImActorModelApiServiceExEmailContactRegistered *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiServiceExEmailContactRegistered alloc] init], content));
    default:
    return [[ImActorModelApiServiceExUnsupported alloc] initWithInt:key withByteArray:content];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceEx)