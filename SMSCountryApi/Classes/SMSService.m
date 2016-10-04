//
//  SMSService.m
//  SMSCountryApi
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import "SMSService.h"
#import "SendSMSResponse.h"

@implementation SMSService

-(void)initWith:(SMSCountryApi *)smsCountryApi{
    self.smsCountryApi = smsCountryApi;
}

-(void)sendSMS:(SendSMSRequest *)sendSMSRequest
       success:(SendSMSSuccessBlock)successBlock
       failure:(ErrorBlock)errorBlock{
    
    NSDictionary *requestMapptionDict = @{@"Text":   @"text",
                                          @"Number":   @"number",
                                          @"SenderId":   @"senderId",
                                          @"DRNotifyUrl":   @"drNotifyUrl",
                                          @"DRNotifyHttpMethod":   @"drNotifyHttpMethod"
                                          };
    
    NSDictionary *responseMapptionDict = @{
                                           @"ApiId":   @"apiId",
                                           @"Success":   @"success",
                                           @"Message":   @"message",
                                           @"MessageUUID":   @"messageUUID"
                                           };
    
    [self.smsCountryApi setRequestMapping:requestMapptionDict
                                withClass:[SendSMSRequest class]];
    
    [self.smsCountryApi setResponseMapping:responseMapptionDict
                            forPathPattern:@"/SMSes"
                                 withClass:[SendSMSRequest class]];
    
    NSString *path = [NSString stringWithFormat:@"%@/SMSes", self.smsCountryApi.endPointPrefix];
    [self.smsCountryApi.restKitManager postObject:sendSMSRequest
                                             path:path
             parameters:nil
                success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
                    SendSMSResponse *sendSMSResponse = [mappingResult firstObject];
                    successBlock(sendSMSResponse);
                }
                failure:^(RKObjectRequestOperation *operation, NSError *error){
                    errorBlock(operation, error);
                }];
}

@end

