//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/RSAPublicKey.java
//

#ifndef _OrgBouncycastleAsn1PkcsRSAPublicKey_H_
#define _OrgBouncycastleAsn1PkcsRSAPublicKey_H_

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1TaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1PkcsRSAPublicKey : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1PkcsRSAPublicKey *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                withBoolean:(jboolean)explicit_;

+ (OrgBouncycastleAsn1PkcsRSAPublicKey *)getInstanceWithId:(id)obj;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)publicExponent;

- (JavaMathBigInteger *)getModulus;

- (JavaMathBigInteger *)getPublicExponent;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1PkcsRSAPublicKey)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1PkcsRSAPublicKey *OrgBouncycastleAsn1PkcsRSAPublicKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT OrgBouncycastleAsn1PkcsRSAPublicKey *OrgBouncycastleAsn1PkcsRSAPublicKey_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1PkcsRSAPublicKey)

#endif // _OrgBouncycastleAsn1PkcsRSAPublicKey_H_