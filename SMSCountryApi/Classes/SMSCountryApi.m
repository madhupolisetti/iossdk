//
//  SMSCountryApi.m
//  Pods
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import "SMSCountryApi.h"

@implementation SMSCountryApi

-(void)initWithBaseUrl:(NSString *)baseUrl authKey:(NSString *)authKey authToken:(NSString *)authToken{
    self.authKey = authKey;
    self.authToken = authToken;
    self.baseUrl = baseUrl;
    self.apiVersion = @"v0.1";
    self.endPointPrefix = [NSString stringWithFormat:@"/%@/Accounts/%@", self.apiVersion, self.authKey];
    
    self.restKitManager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:self.baseUrl]];
}


-(void)setRequestMapping:(NSDictionary *)requestDict withClass:(Class)objectClass{
    RKObjectMapping *requestMapping = [RKObjectMapping requestMapping];
    [requestMapping addAttributeMappingsFromDictionary:requestDict];
    
    RKRequestDescriptor *requestDescriptor = [RKRequestDescriptor requestDescriptorWithMapping:requestMapping
                                                                                   objectClass:objectClass
                                                                                   rootKeyPath:@""
                                                                                        method:RKRequestMethodAny];
    
    [self.restKitManager addRequestDescriptor:requestDescriptor];
}

-(void)setResponseMapping:(NSDictionary *)responseDict forPathPattern:(NSString *)pathPattern withClass:(Class)objectClass{
    RKObjectMapping *responseMapping = [RKObjectMapping mappingForClass:objectClass];
    [responseMapping addAttributeMappingsFromDictionary:responseDict];
    
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful); // Anything in 2xx
    RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:responseMapping
                                                                                            method:RKRequestMethodAny
                                                                                       pathPattern:pathPattern
                                                                                           keyPath:@""
                                                                                       statusCodes:statusCodes];
    
    [self.restKitManager addResponseDescriptor:responseDescriptor];
}

@end

