//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/FileRemoteSource.java
//

#ifndef _ImActorModelEntityContentFileRemoteSource_H_
#define _ImActorModelEntityContentFileRemoteSource_H_

@class AMFileLocation;
@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/FileSource.h"

@interface ImActorModelEntityContentFileRemoteSource : ImActorModelEntityContentFileSource {
}

+ (ImActorModelEntityContentFileRemoteSource *)fromValuesWithBSBserValues:(BSBserValues *)reader;

- (instancetype)initWithAMFileLocation:(AMFileLocation *)fileLocation;

- (AMFileLocation *)getFileLocation;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityContentFileRemoteSource)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelEntityContentFileRemoteSource *ImActorModelEntityContentFileRemoteSource_fromValuesWithBSBserValues_(BSBserValues *reader);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityContentFileRemoteSource)

#endif // _ImActorModelEntityContentFileRemoteSource_H_