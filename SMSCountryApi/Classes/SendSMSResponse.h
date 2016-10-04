//
//  SendSMSResponse.h
//  SMSCountryApi
//
//  Created by Jayakarthikeyan G on 04/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import "BaseResponse.h"

@interface SendSMSResponse: BaseResponse
@property (nonatomic, strong) NSString *messageUUID;
@end
