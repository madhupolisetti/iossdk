//
//  SMSService.h
//  SMSCountryApi
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SendSMSRequest.h"
#import "SendSMSResponse.h"
#import "SMSCountryApi.h"
#import "CompletionBlocks.h"

typedef void (^SendSMSSuccessBlock)(SendSMSResponse *sendSMSResponse);

@interface SMSService : NSObject

@property (nonatomic, strong) SMSCountryApi *smsCountryApi;

-(void)initWith:(SMSCountryApi *)smsCountryApi;
-(void)sendSMS:(SendSMSRequest *)sendSMSRequest
       success:(SendSMSSuccessBlock)successBlock
       failure:(ErrorBlock)errorBlock;
@end
