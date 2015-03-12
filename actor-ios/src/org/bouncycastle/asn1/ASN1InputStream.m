//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1InputStream.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/EOFException.h"
#include "java/io/FilterInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Boolean.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Enumerated.h"
#include "org/bouncycastle/asn1/ASN1Exception.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1InputStream.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/ASN1StreamParser.h"
#include "org/bouncycastle/asn1/ASN1UTCTime.h"
#include "org/bouncycastle/asn1/BERApplicationSpecificParser.h"
#include "org/bouncycastle/asn1/BEROctetString.h"
#include "org/bouncycastle/asn1/BEROctetStringParser.h"
#include "org/bouncycastle/asn1/BERSequenceParser.h"
#include "org/bouncycastle/asn1/BERSetParser.h"
#include "org/bouncycastle/asn1/BERTaggedObjectParser.h"
#include "org/bouncycastle/asn1/BERTags.h"
#include "org/bouncycastle/asn1/DERApplicationSpecific.h"
#include "org/bouncycastle/asn1/DERBMPString.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERExternal.h"
#include "org/bouncycastle/asn1/DERExternalParser.h"
#include "org/bouncycastle/asn1/DERFactory.h"
#include "org/bouncycastle/asn1/DERGeneralString.h"
#include "org/bouncycastle/asn1/DERIA5String.h"
#include "org/bouncycastle/asn1/DERNull.h"
#include "org/bouncycastle/asn1/DERNumericString.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERPrintableString.h"
#include "org/bouncycastle/asn1/DERT61String.h"
#include "org/bouncycastle/asn1/DERUTF8String.h"
#include "org/bouncycastle/asn1/DERUniversalString.h"
#include "org/bouncycastle/asn1/DERVisibleString.h"
#include "org/bouncycastle/asn1/DefiniteLengthInputStream.h"
#include "org/bouncycastle/asn1/IndefiniteLengthInputStream.h"
#include "org/bouncycastle/asn1/LazyEncodedSequence.h"
#include "org/bouncycastle/asn1/StreamUtil.h"
#include "org/bouncycastle/util/io/Streams.h"

__attribute__((unused)) static IOSByteArray *OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(OrgBouncycastleAsn1DefiniteLengthInputStream *defIn, IOSObjectArray *tmpBuffers);
__attribute__((unused)) static IOSCharArray *OrgBouncycastleAsn1ASN1InputStream_getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_(OrgBouncycastleAsn1DefiniteLengthInputStream *defIn);

@interface OrgBouncycastleAsn1ASN1InputStream () {
 @public
  jint limit_;
  jboolean lazyEvaluate_;
  IOSObjectArray *tmpBuffers_;
}

+ (IOSByteArray *)getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)defIn
                                                             withByteArray2:(IOSObjectArray *)tmpBuffers;

+ (IOSCharArray *)getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)defIn;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1ASN1InputStream, tmpBuffers_, IOSObjectArray *)

@implementation OrgBouncycastleAsn1ASN1InputStream

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:is withInt:OrgBouncycastleAsn1StreamUtil_findLimitWithJavaIoInputStream_(is)];
}

- (instancetype)initWithByteArray:(IOSByteArray *)input {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:[[JavaIoByteArrayInputStream alloc] initWithByteArray:input] withInt:((IOSByteArray *) nil_chk(input))->size_];
}

- (instancetype)initWithByteArray:(IOSByteArray *)input
                      withBoolean:(jboolean)lazyEvaluate {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:[[JavaIoByteArrayInputStream alloc] initWithByteArray:input] withInt:((IOSByteArray *) nil_chk(input))->size_ withBoolean:lazyEvaluate];
}

- (instancetype)initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:(JavaIoInputStream *)input
                                                                    withInt:(jint)limit {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:input withInt:limit withBoolean:NO];
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)input
                                  withInt:(jint)limit {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:input withInt:limit];
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)input
                              withBoolean:(jboolean)lazyEvaluate {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:input withInt:OrgBouncycastleAsn1StreamUtil_findLimitWithJavaIoInputStream_(input) withBoolean:lazyEvaluate];
}

- (instancetype)initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:(JavaIoInputStream *)input
                                                                    withInt:(jint)limit
                                                                withBoolean:(jboolean)lazyEvaluate {
  if (self = [super initWithJavaIoInputStream:input]) {
    self->limit_ = limit;
    self->lazyEvaluate_ = lazyEvaluate;
    self->tmpBuffers_ = [IOSObjectArray newArrayWithLength:11 type:IOSClass_byteArray(1)];
  }
  return self;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)input
                                  withInt:(jint)limit
                              withBoolean:(jboolean)lazyEvaluate {
  return [self initOrgBouncycastleAsn1ASN1InputStreamWithJavaIoInputStream:input withInt:limit withBoolean:lazyEvaluate];
}

- (jint)getLimit {
  return limit_;
}

- (jint)readLength {
  return OrgBouncycastleAsn1ASN1InputStream_readLengthWithJavaIoInputStream_withInt_(self, limit_);
}

- (void)readFullyWithByteArray:(IOSByteArray *)bytes {
  if (OrgBouncycastleUtilIoStreams_readFullyWithJavaIoInputStream_withByteArray_(self, bytes) != ((IOSByteArray *) nil_chk(bytes))->size_) {
    @throw [[JavaIoEOFException alloc] initWithNSString:@"EOF encountered in middle of object"];
  }
}

- (OrgBouncycastleAsn1ASN1Primitive *)buildObjectWithInt:(jint)tag
                                                 withInt:(jint)tagNo
                                                 withInt:(jint)length {
  jboolean isConstructed = (tag & OrgBouncycastleAsn1BERTags_CONSTRUCTED) != 0;
  OrgBouncycastleAsn1DefiniteLengthInputStream *defIn = [[OrgBouncycastleAsn1DefiniteLengthInputStream alloc] initWithJavaIoInputStream:self withInt:length];
  if ((tag & OrgBouncycastleAsn1BERTags_APPLICATION) != 0) {
    return [[OrgBouncycastleAsn1DERApplicationSpecific alloc] initWithBoolean:isConstructed withInt:tagNo withByteArray:[defIn toByteArray]];
  }
  if ((tag & OrgBouncycastleAsn1BERTags_TAGGED) != 0) {
    return [((OrgBouncycastleAsn1ASN1StreamParser *) [[OrgBouncycastleAsn1ASN1StreamParser alloc] initWithJavaIoInputStream:defIn]) readTaggedObjectWithBoolean:isConstructed withInt:tagNo];
  }
  if (isConstructed) {
    {
      OrgBouncycastleAsn1ASN1EncodableVector *v;
      IOSObjectArray *strings;
      switch (tagNo) {
        case OrgBouncycastleAsn1BERTags_OCTET_STRING:
        v = [self buildDEREncodableVectorWithOrgBouncycastleAsn1DefiniteLengthInputStream:defIn];
        strings = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) size] type:OrgBouncycastleAsn1ASN1OctetString_class_()];
        for (jint i = 0; i != strings->size_; i++) {
          IOSObjectArray_Set(strings, i, (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([v getWithInt:i], [OrgBouncycastleAsn1ASN1OctetString class]));
        }
        return [[OrgBouncycastleAsn1BEROctetString alloc] initWithOrgBouncycastleAsn1ASN1OctetStringArray:strings];
        case OrgBouncycastleAsn1BERTags_SEQUENCE:
        if (lazyEvaluate_) {
          return [[OrgBouncycastleAsn1LazyEncodedSequence alloc] initWithByteArray:[defIn toByteArray]];
        }
        else {
          return OrgBouncycastleAsn1DERFactory_createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector_([self buildDEREncodableVectorWithOrgBouncycastleAsn1DefiniteLengthInputStream:defIn]);
        }
        case OrgBouncycastleAsn1BERTags_SET:
        return OrgBouncycastleAsn1DERFactory_createSetWithOrgBouncycastleAsn1ASN1EncodableVector_([self buildDEREncodableVectorWithOrgBouncycastleAsn1DefiniteLengthInputStream:defIn]);
        case OrgBouncycastleAsn1BERTags_EXTERNAL:
        return [[OrgBouncycastleAsn1DERExternal alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:[self buildDEREncodableVectorWithOrgBouncycastleAsn1DefiniteLengthInputStream:defIn]];
        default:
        @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I$", @"unknown tag ", tagNo, @" encountered")];
      }
    }
  }
  return OrgBouncycastleAsn1ASN1InputStream_createPrimitiveDERObjectWithInt_withOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(tagNo, defIn, tmpBuffers_);
}

- (OrgBouncycastleAsn1ASN1EncodableVector *)buildEncodableVector {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  OrgBouncycastleAsn1ASN1Primitive *o;
  while ((o = [self readObject]) != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:o];
  }
  return v;
}

- (OrgBouncycastleAsn1ASN1EncodableVector *)buildDEREncodableVectorWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)dIn {
  return [((OrgBouncycastleAsn1ASN1InputStream *) [[OrgBouncycastleAsn1ASN1InputStream alloc] initWithJavaIoInputStream:dIn]) buildEncodableVector];
}

- (OrgBouncycastleAsn1ASN1Primitive *)readObject {
  jint tag = [self read];
  if (tag <= 0) {
    if (tag == 0) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"unexpected end-of-contents marker"];
    }
    return nil;
  }
  jint tagNo = OrgBouncycastleAsn1ASN1InputStream_readTagNumberWithJavaIoInputStream_withInt_(self, tag);
  jboolean isConstructed = (tag & OrgBouncycastleAsn1BERTags_CONSTRUCTED) != 0;
  jint length = [self readLength];
  if (length < 0) {
    if (!isConstructed) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"indefinite length primitive encoding encountered"];
    }
    OrgBouncycastleAsn1IndefiniteLengthInputStream *indIn = [[OrgBouncycastleAsn1IndefiniteLengthInputStream alloc] initWithJavaIoInputStream:self withInt:limit_];
    OrgBouncycastleAsn1ASN1StreamParser *sp = [[OrgBouncycastleAsn1ASN1StreamParser alloc] initWithJavaIoInputStream:indIn withInt:limit_];
    if ((tag & OrgBouncycastleAsn1BERTags_APPLICATION) != 0) {
      return [((OrgBouncycastleAsn1BERApplicationSpecificParser *) [[OrgBouncycastleAsn1BERApplicationSpecificParser alloc] initWithInt:tagNo withOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
    }
    if ((tag & OrgBouncycastleAsn1BERTags_TAGGED) != 0) {
      return [((OrgBouncycastleAsn1BERTaggedObjectParser *) [[OrgBouncycastleAsn1BERTaggedObjectParser alloc] initWithBoolean:YES withInt:tagNo withOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
    }
    switch (tagNo) {
      case OrgBouncycastleAsn1BERTags_OCTET_STRING:
      return [((OrgBouncycastleAsn1BEROctetStringParser *) [[OrgBouncycastleAsn1BEROctetStringParser alloc] initWithOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
      case OrgBouncycastleAsn1BERTags_SEQUENCE:
      return [((OrgBouncycastleAsn1BERSequenceParser *) [[OrgBouncycastleAsn1BERSequenceParser alloc] initWithOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
      case OrgBouncycastleAsn1BERTags_SET:
      return [((OrgBouncycastleAsn1BERSetParser *) [[OrgBouncycastleAsn1BERSetParser alloc] initWithOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
      case OrgBouncycastleAsn1BERTags_EXTERNAL:
      return [((OrgBouncycastleAsn1DERExternalParser *) [[OrgBouncycastleAsn1DERExternalParser alloc] initWithOrgBouncycastleAsn1ASN1StreamParser:sp]) getLoadedObject];
      default:
      @throw [[JavaIoIOException alloc] initWithNSString:@"unknown BER object encountered"];
    }
  }
  else {
    @try {
      return [self buildObjectWithInt:tag withInt:tagNo withInt:length];
    }
    @catch (JavaLangIllegalArgumentException *e) {
      @throw [[OrgBouncycastleAsn1ASN1Exception alloc] initWithNSString:@"corrupted stream detected" withJavaLangThrowable:e];
    }
  }
}

+ (jint)readTagNumberWithJavaIoInputStream:(JavaIoInputStream *)s
                                   withInt:(jint)tag {
  return OrgBouncycastleAsn1ASN1InputStream_readTagNumberWithJavaIoInputStream_withInt_(s, tag);
}

+ (jint)readLengthWithJavaIoInputStream:(JavaIoInputStream *)s
                                withInt:(jint)limit {
  return OrgBouncycastleAsn1ASN1InputStream_readLengthWithJavaIoInputStream_withInt_(s, limit);
}

+ (IOSByteArray *)getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)defIn
                                                             withByteArray2:(IOSObjectArray *)tmpBuffers {
  return OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(defIn, tmpBuffers);
}

+ (IOSCharArray *)getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)defIn {
  return OrgBouncycastleAsn1ASN1InputStream_getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_(defIn);
}

+ (OrgBouncycastleAsn1ASN1Primitive *)createPrimitiveDERObjectWithInt:(jint)tagNo
                     withOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)defIn
                                                       withByteArray2:(IOSObjectArray *)tmpBuffers {
  return OrgBouncycastleAsn1ASN1InputStream_createPrimitiveDERObjectWithInt_withOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(tagNo, defIn, tmpBuffers);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1ASN1InputStream *)other {
  [super copyAllFieldsTo:other];
  other->limit_ = limit_;
  other->lazyEvaluate_ = lazyEvaluate_;
  other->tmpBuffers_ = tmpBuffers_;
}

@end

jint OrgBouncycastleAsn1ASN1InputStream_readTagNumberWithJavaIoInputStream_withInt_(JavaIoInputStream *s, jint tag) {
  OrgBouncycastleAsn1ASN1InputStream_init();
  jint tagNo = tag & (jint) 0x1f;
  if (tagNo == (jint) 0x1f) {
    tagNo = 0;
    jint b = [((JavaIoInputStream *) nil_chk(s)) read];
    if ((b & (jint) 0x7f) == 0) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"corrupted stream - invalid high tag number found"];
    }
    while ((b >= 0) && ((b & (jint) 0x80) != 0)) {
      tagNo |= (b & (jint) 0x7f);
      LShiftAssignInt(&tagNo, 7);
      b = [s read];
    }
    if (b < 0) {
      @throw [[JavaIoEOFException alloc] initWithNSString:@"EOF found inside tag value."];
    }
    tagNo |= (b & (jint) 0x7f);
  }
  return tagNo;
}

jint OrgBouncycastleAsn1ASN1InputStream_readLengthWithJavaIoInputStream_withInt_(JavaIoInputStream *s, jint limit) {
  OrgBouncycastleAsn1ASN1InputStream_init();
  jint length = [((JavaIoInputStream *) nil_chk(s)) read];
  if (length < 0) {
    @throw [[JavaIoEOFException alloc] initWithNSString:@"EOF found when length expected"];
  }
  if (length == (jint) 0x80) {
    return -1;
  }
  if (length > 127) {
    jint size = length & (jint) 0x7f;
    if (size > 4) {
      @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I", @"DER length more than 4 bytes: ", size)];
    }
    length = 0;
    for (jint i = 0; i < size; i++) {
      jint next = [s read];
      if (next < 0) {
        @throw [[JavaIoEOFException alloc] initWithNSString:@"EOF found reading length"];
      }
      length = (LShift32(length, 8)) + next;
    }
    if (length < 0) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"corrupted stream - negative length found"];
    }
    if (length >= limit) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"corrupted stream - out of bounds length found"];
    }
  }
  return length;
}

IOSByteArray *OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(OrgBouncycastleAsn1DefiniteLengthInputStream *defIn, IOSObjectArray *tmpBuffers) {
  OrgBouncycastleAsn1ASN1InputStream_init();
  jint len = [((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) getRemaining];
  if ([defIn getRemaining] < ((IOSObjectArray *) nil_chk(tmpBuffers))->size_) {
    IOSByteArray *buf = IOSObjectArray_Get(tmpBuffers, len);
    if (buf == nil) {
      buf = IOSObjectArray_SetAndConsume(tmpBuffers, len, [IOSByteArray newArrayWithLength:len]);
    }
    OrgBouncycastleUtilIoStreams_readFullyWithJavaIoInputStream_withByteArray_(defIn, buf);
    return buf;
  }
  else {
    return [defIn toByteArray];
  }
}

IOSCharArray *OrgBouncycastleAsn1ASN1InputStream_getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_(OrgBouncycastleAsn1DefiniteLengthInputStream *defIn) {
  OrgBouncycastleAsn1ASN1InputStream_init();
  jint len = [((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) getRemaining] / 2;
  IOSCharArray *buf = [IOSCharArray newArrayWithLength:len];
  jint totalRead = 0;
  while (totalRead < len) {
    jint ch1 = [defIn read];
    if (ch1 < 0) {
      break;
    }
    jint ch2 = [defIn read];
    if (ch2 < 0) {
      break;
    }
    *IOSCharArray_GetRef(buf, totalRead++) = (jchar) ((LShift32(ch1, 8)) | (ch2 & (jint) 0xff));
  }
  return buf;
}

OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1InputStream_createPrimitiveDERObjectWithInt_withOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(jint tagNo, OrgBouncycastleAsn1DefiniteLengthInputStream *defIn, IOSObjectArray *tmpBuffers) {
  OrgBouncycastleAsn1ASN1InputStream_init();
  switch (tagNo) {
    case OrgBouncycastleAsn1BERTags_BIT_STRING:
    return OrgBouncycastleAsn1DERBitString_fromInputStreamWithInt_withJavaIoInputStream_([((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) getRemaining], defIn);
    case OrgBouncycastleAsn1BERTags_BMP_STRING:
    return [[OrgBouncycastleAsn1DERBMPString alloc] initWithCharArray:OrgBouncycastleAsn1ASN1InputStream_getBMPCharBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_(defIn)];
    case OrgBouncycastleAsn1BERTags_BOOLEAN:
    return OrgBouncycastleAsn1ASN1Boolean_fromOctetStringWithByteArray_(OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(defIn, tmpBuffers));
    case OrgBouncycastleAsn1BERTags_ENUMERATED:
    return OrgBouncycastleAsn1ASN1Enumerated_fromOctetStringWithByteArray_(OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(defIn, tmpBuffers));
    case OrgBouncycastleAsn1BERTags_GENERALIZED_TIME:
    return [[OrgBouncycastleAsn1ASN1GeneralizedTime alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_GENERAL_STRING:
    return [[OrgBouncycastleAsn1DERGeneralString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_IA5_STRING:
    return [[OrgBouncycastleAsn1DERIA5String alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_INTEGER:
    return [[OrgBouncycastleAsn1ASN1Integer alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray] withBoolean:NO];
    case OrgBouncycastleAsn1BERTags_NULL:
    return OrgBouncycastleAsn1DERNull_get_INSTANCE_();
    case OrgBouncycastleAsn1BERTags_NUMERIC_STRING:
    return [[OrgBouncycastleAsn1DERNumericString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_OBJECT_IDENTIFIER:
    return OrgBouncycastleAsn1ASN1ObjectIdentifier_fromOctetStringWithByteArray_(OrgBouncycastleAsn1ASN1InputStream_getBufferWithOrgBouncycastleAsn1DefiniteLengthInputStream_withByteArray2_(defIn, tmpBuffers));
    case OrgBouncycastleAsn1BERTags_OCTET_STRING:
    return [[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_PRINTABLE_STRING:
    return [[OrgBouncycastleAsn1DERPrintableString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_T61_STRING:
    return [[OrgBouncycastleAsn1DERT61String alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_UNIVERSAL_STRING:
    return [[OrgBouncycastleAsn1DERUniversalString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_UTC_TIME:
    return [[OrgBouncycastleAsn1ASN1UTCTime alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_UTF8_STRING:
    return [[OrgBouncycastleAsn1DERUTF8String alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    case OrgBouncycastleAsn1BERTags_VISIBLE_STRING:
    return [[OrgBouncycastleAsn1DERVisibleString alloc] initWithByteArray:[((OrgBouncycastleAsn1DefiniteLengthInputStream *) nil_chk(defIn)) toByteArray]];
    default:
    @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I$", @"unknown tag ", tagNo, @" encountered")];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1ASN1InputStream)