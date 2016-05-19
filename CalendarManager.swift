//
//  CalendarManager.swift
//  SampleAppRN
//
//  Created by Simon Yang on 5/13/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

import Foundation
import React

@objc(CalendarManager)
class CalendarManager: NSObject {
  var bridge: RCTBridge!
  
  @objc func addEvent(name: String, location: String, date: NSNumber, callback: RCTResponseSenderBlock) -> Void {
    NSLog("Bridge: %@", self.bridge)
    NSLog("%@ %@ %@", name, location, date)
    let ret = [name, location]
    callback([NSNull(), ret])
    // self.bridge.eventDispatcher.sendAppEventWithName("EventReminder", body: ret)
  }
  
  @objc func constantsToExport() -> NSObject {
    return [
      "x": 1,
      "y": 2,
      "z": "Arbitrary String"
    ]
  }
  
}