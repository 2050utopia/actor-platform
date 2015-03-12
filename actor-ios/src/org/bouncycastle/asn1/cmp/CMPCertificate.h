//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/CMPCertificate.java
//

#ifndef _OrgBouncycastleAsn1CmpCMPCertificate_H_
#define _OrgBouncycastleAsn1CmpCMPCertificate_H_

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1X509AttributeCertificate;
@class OrgBouncycastleAsn1X509Certificate;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Choice.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmpCMPCertificate : OrgBouncycastleAsn1ASN1Object < OrgBouncycastleAsn1ASN1Choice > {
}

- (instancetype)initWithOrgBouncycastleAsn1X509AttributeCertificate:(OrgBouncycastleAsn1X509AttributeCertificate *)x509v2AttrCert;

- (instancetype)initWithOrgBouncycastleAsn1X509Certificate:(OrgBouncycastleAsn1X509Certificate *)x509v3PKCert;

+ (OrgBouncycastleAsn1CmpCMPCertificate *)getInstanceWithId:(id)o;

- (jboolean)isX509v3PKCert;

- (OrgBouncycastleAsn1X509Certificate *)getX509v3PKCert;

- (OrgBouncycastleAsn1X509AttributeCertificate *)getX509v2AttrCert;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmpCMPCertificate)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmpCMPCertificate *OrgBouncycastleAsn1CmpCMPCertificate_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmpCMPCertificate)

#endif // _OrgBouncycastleAsn1CmpCMPCertificate_H_