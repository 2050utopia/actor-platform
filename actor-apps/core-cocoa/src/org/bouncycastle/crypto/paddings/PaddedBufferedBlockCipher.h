//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher.java
//

#ifndef _OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_H_
#define _OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/BufferedBlockCipher.h"

@class IOSByteArray;
@protocol OrgBouncycastleCryptoBlockCipher;
@protocol OrgBouncycastleCryptoCipherParameters;
@protocol OrgBouncycastleCryptoPaddingsBlockCipherPadding;

@interface OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher : OrgBouncycastleCryptoBufferedBlockCipher {
 @public
  id<OrgBouncycastleCryptoPaddingsBlockCipherPadding> padding_;
}

#pragma mark Public

- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher;

- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher
     withOrgBouncycastleCryptoPaddingsBlockCipherPadding:(id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>)padding;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (jint)getOutputSizeWithInt:(jint)len;

- (jint)getUpdateOutputSizeWithInt:(jint)len;

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params OBJC_METHOD_FAMILY_NONE;

- (jint)processByteWithByte:(jbyte)inArg
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff;

- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher)

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher, padding_, id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>)

FOUNDATION_EXPORT void OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_withOrgBouncycastleCryptoPaddingsBlockCipherPadding_(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher *self, id<OrgBouncycastleCryptoBlockCipher> cipher, id<OrgBouncycastleCryptoPaddingsBlockCipherPadding> padding);

FOUNDATION_EXPORT OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher *new_OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_withOrgBouncycastleCryptoPaddingsBlockCipherPadding_(id<OrgBouncycastleCryptoBlockCipher> cipher, id<OrgBouncycastleCryptoPaddingsBlockCipherPadding> padding) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher *self, id<OrgBouncycastleCryptoBlockCipher> cipher);

FOUNDATION_EXPORT OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher *new_OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(id<OrgBouncycastleCryptoBlockCipher> cipher) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher)

#endif // _OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher_H_