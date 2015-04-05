//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetContacts.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetContacts.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestGetContacts.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestGetContacts () {
 @public
  NSString *contactsHash_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestGetContacts, contactsHash_, NSString *)


#line 20
@implementation ImActorModelApiRpcRequestGetContacts


#line 23
+ (ImActorModelApiRpcRequestGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetContacts_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithNSString:(NSString *)contactsHash {
  if (self = [super init]) {
    
#line 30
    self->contactsHash_ = contactsHash;
  }
  return self;
}


#line 33
- (instancetype)init {
  return [super init];
}

- (NSString *)getContactsHash {
  
#line 38
  return self->contactsHash_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->contactsHash_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 47
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 48
  if (self->contactsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->contactsHash_];
}

- (NSString *)description {
  NSString *res = @"rpc GetContacts{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"contactsHash=", self->contactsHash_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 64
  return ImActorModelApiRpcRequestGetContacts_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestGetContacts *)other {
  [super copyAllFieldsTo:other];
  other->contactsHash_ = contactsHash_;
}

@end

ImActorModelApiRpcRequestGetContacts *ImActorModelApiRpcRequestGetContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetContacts_init();
  
#line 24
  return ((ImActorModelApiRpcRequestGetContacts *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestGetContacts alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetContacts)