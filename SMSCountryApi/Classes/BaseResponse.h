//
//  BaseResponse.h
//  SMSCountryApi
//
//  Created by Jayakarthikeyan G on 03/10/16.
//  Copyright © 2016 SMS Country. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseResponse: NSObject
@property (nonatomic, strong) NSString *apiId;
@property (nonatomic, strong) NSString *success;
@property (nonatomic, strong) NSString *message;
@end

