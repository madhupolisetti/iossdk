//
//  SendSMSRequest.h
//  SMSCountryApi
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SendSMSRequest: NSObject
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *senderId;
@property (nonatomic, strong) NSString *drNotifyUrl;
@property (nonatomic, strong) NSString *drNotifyHttpMethod;
@end

