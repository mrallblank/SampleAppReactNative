//
//  ReactViewBridge.m
//  SampleAppRN
//
//  Created by Simon Yang on 5/17/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTBridgeModule.h"
#import "RCTViewManager.h"

@interface LabelView: UIView
@property (nonatomic) UILabel *label;
-(void)load;
@end

@interface RCT_EXTERN_MODULE(ReactViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(hidden, BOOL)
RCT_EXPORT_VIEW_PROPERTY(backgroundColor, UIColor)
RCT_CUSTOM_VIEW_PROPERTY(text, NSString, LabelView){
  view.label.text = json;
  // NSLog(@"width: @%f, height: @%f", view.frame.size.width, view.frame.size.height);
  [view load];
}
@end