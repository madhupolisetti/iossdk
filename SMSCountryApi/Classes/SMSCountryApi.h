//
//  SMSCountryApi.h
//  Pods
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface SMSCountryApi : NSObject
@property (nonatomic, strong) NSString *baseUrl;
@property (nonatomic, strong) NSString *authKey;
@property (nonatomic, strong) NSString *authToken;
@property (nonatomic, strong) RKObjectManager *restKitManager;
@property (nonatomic, strong) NSString *apiVersion;
@property (nonatomic, strong) NSString *endPointPrefix;

-(void)initWithBaseUrl:(NSString *)baseUrl authKey:(NSString *)authKey authToken:(NSString *)authToken;
-(void)setRequestMapping:(NSDictionary *)requestDict withClass:(Class)objectClass;
-(void)setResponseMapping:(NSDictionary *)responseDict forPathPattern:(NSString *)pathPattern withClass:(Class)objectClass;
@end
