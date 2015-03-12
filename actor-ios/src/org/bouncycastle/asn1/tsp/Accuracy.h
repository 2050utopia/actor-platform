//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/tsp/Accuracy.java
//

#ifndef _OrgBouncycastleAsn1TspAccuracy_H_
#define _OrgBouncycastleAsn1TspAccuracy_H_

@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

#define OrgBouncycastleAsn1TspAccuracy_MAX_MICROS 999
#define OrgBouncycastleAsn1TspAccuracy_MAX_MILLIS 999
#define OrgBouncycastleAsn1TspAccuracy_MIN_MICROS 1
#define OrgBouncycastleAsn1TspAccuracy_MIN_MILLIS 1

@interface OrgBouncycastleAsn1TspAccuracy : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1ASN1Integer *seconds_;
  OrgBouncycastleAsn1ASN1Integer *millis_;
  OrgBouncycastleAsn1ASN1Integer *micros_;
}

- (instancetype)init;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)seconds
                    withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)millis
                    withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)micros;

+ (OrgBouncycastleAsn1TspAccuracy *)getInstanceWithId:(id)o;

- (OrgBouncycastleAsn1ASN1Integer *)getSeconds;

- (OrgBouncycastleAsn1ASN1Integer *)getMillis;

- (OrgBouncycastleAsn1ASN1Integer *)getMicros;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1TspAccuracy)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1TspAccuracy, seconds_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1TspAccuracy, millis_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1TspAccuracy, micros_, OrgBouncycastleAsn1ASN1Integer *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1TspAccuracy *OrgBouncycastleAsn1TspAccuracy_getInstanceWithId_(id o);

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1TspAccuracy, MIN_MILLIS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1TspAccuracy, MAX_MILLIS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1TspAccuracy, MIN_MICROS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1TspAccuracy, MAX_MICROS, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1TspAccuracy)

#endif // _OrgBouncycastleAsn1TspAccuracy_H_