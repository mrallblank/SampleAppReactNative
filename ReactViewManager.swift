//
//  ReactView.swift
//  SampleAppRN
//
//  Created by Simon Yang on 5/12/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

import UIKit
import React

@objc(ReactViewManager)
class ReactViewManager: RCTViewManager {
  override func view() -> UIView! {
    let labelView = LabelView()
    labelView.bridge = bridge
    return labelView
  }
}