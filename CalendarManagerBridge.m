//
//  CalendarManagerBridge.m
//  SampleAppRN
//
//  Created by Simon Yang on 5/13/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)
RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date callback:(RCTResponseSenderBlock)callback);
@end