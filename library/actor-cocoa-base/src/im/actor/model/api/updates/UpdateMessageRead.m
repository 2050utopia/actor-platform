//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateMessageRead.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateMessageRead.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageRead.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateMessageRead () {
 @public
  ImActorModelApiPeer *peer_;
  jlong startDate_;
  jlong readDate_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageRead, peer_, ImActorModelApiPeer *)


#line 20
@implementation ImActorModelApiUpdatesUpdateMessageRead


#line 23
+ (ImActorModelApiUpdatesUpdateMessageRead *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageRead_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)startDate
                                   withLong:(jlong)readDate {
  if (self = [super init]) {
    
#line 32
    self->peer_ = peer;
    
#line 33
    self->startDate_ = startDate;
    
#line 34
    self->readDate_ = readDate;
  }
  return self;
}


#line 37
- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  
#line 42
  return self->peer_;
}


#line 45
- (jlong)getStartDate {
  
#line 46
  return self->startDate_;
}


#line 49
- (jlong)getReadDate {
  
#line 50
  return self->readDate_;
}


#line 54
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiPeer alloc] init]];
  self->startDate_ = [values getLongWithInt:2];
  self->readDate_ = [values getLongWithInt:3];
}


#line 61
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 62
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->startDate_];
  [writer writeLongWithInt:3 withLong:self->readDate_];
}

- (NSString *)description {
  NSString *res = @"update MessageRead{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", startDate=", self->startDate_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", readDate=", self->readDate_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 82
  return ImActorModelApiUpdatesUpdateMessageRead_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateMessageRead *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->startDate_ = startDate_;
  other->readDate_ = readDate_;
}

@end

ImActorModelApiUpdatesUpdateMessageRead *ImActorModelApiUpdatesUpdateMessageRead_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageRead_init();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateMessageRead *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateMessageRead alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageRead)