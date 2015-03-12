//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/EncKeyWithID.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERUTF8String.h"
#include "org/bouncycastle/asn1/crmf/EncKeyWithID.h"
#include "org/bouncycastle/asn1/pkcs/PrivateKeyInfo.h"
#include "org/bouncycastle/asn1/x509/GeneralName.h"

@interface OrgBouncycastleAsn1CrmfEncKeyWithID () {
 @public
  OrgBouncycastleAsn1PkcsPrivateKeyInfo *privKeyInfo_;
  id<OrgBouncycastleAsn1ASN1Encodable> identifier_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncKeyWithID, privKeyInfo_, OrgBouncycastleAsn1PkcsPrivateKeyInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfEncKeyWithID, identifier_, id<OrgBouncycastleAsn1ASN1Encodable>)

@implementation OrgBouncycastleAsn1CrmfEncKeyWithID

+ (OrgBouncycastleAsn1CrmfEncKeyWithID *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CrmfEncKeyWithID_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->privKeyInfo_ = OrgBouncycastleAsn1PkcsPrivateKeyInfo_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    if ([seq size] > 1) {
      if (!([[seq getObjectAtWithInt:1] isKindOfClass:[OrgBouncycastleAsn1DERUTF8String class]])) {
        self->identifier_ = OrgBouncycastleAsn1X509GeneralName_getInstanceWithId_([seq getObjectAtWithInt:1]);
      }
      else {
        self->identifier_ = (id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([seq getObjectAtWithInt:1], @protocol(OrgBouncycastleAsn1ASN1Encodable));
      }
    }
    else {
      self->identifier_ = nil;
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1PkcsPrivateKeyInfo:(OrgBouncycastleAsn1PkcsPrivateKeyInfo *)privKeyInfo {
  if (self = [super init]) {
    self->privKeyInfo_ = privKeyInfo;
    self->identifier_ = nil;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1PkcsPrivateKeyInfo:(OrgBouncycastleAsn1PkcsPrivateKeyInfo *)privKeyInfo
                         withOrgBouncycastleAsn1DERUTF8String:(OrgBouncycastleAsn1DERUTF8String *)str {
  if (self = [super init]) {
    self->privKeyInfo_ = privKeyInfo;
    self->identifier_ = str;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1PkcsPrivateKeyInfo:(OrgBouncycastleAsn1PkcsPrivateKeyInfo *)privKeyInfo
                       withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)generalName {
  if (self = [super init]) {
    self->privKeyInfo_ = privKeyInfo;
    self->identifier_ = generalName;
  }
  return self;
}

- (OrgBouncycastleAsn1PkcsPrivateKeyInfo *)getPrivateKey {
  return privKeyInfo_;
}

- (jboolean)hasIdentifier {
  return identifier_ != nil;
}

- (jboolean)isIdentifierUTF8String {
  return [identifier_ isKindOfClass:[OrgBouncycastleAsn1DERUTF8String class]];
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getIdentifier {
  return identifier_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:privKeyInfo_];
  if (identifier_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:identifier_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CrmfEncKeyWithID *)other {
  [super copyAllFieldsTo:other];
  other->privKeyInfo_ = privKeyInfo_;
  other->identifier_ = identifier_;
}

@end

OrgBouncycastleAsn1CrmfEncKeyWithID *OrgBouncycastleAsn1CrmfEncKeyWithID_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CrmfEncKeyWithID_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CrmfEncKeyWithID class]]) {
    return (OrgBouncycastleAsn1CrmfEncKeyWithID *) check_class_cast(o, [OrgBouncycastleAsn1CrmfEncKeyWithID class]);
  }
  else if (o != nil) {
    return [[OrgBouncycastleAsn1CrmfEncKeyWithID alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CrmfEncKeyWithID)