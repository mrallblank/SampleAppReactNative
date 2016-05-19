//
//  ContainerView.swift
//  SampleAppRN
//
//  Created by Simon Yang on 5/17/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

import UIKit
import React

class ContainerView: UIView {
  let rNSample = RCTRootView(bundleURL: NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true"), moduleName: "RNSample", initialProperties: nil, launchOptions: nil)
  
  private func loadView() {
    rNSample.frame = bounds
    addSubview(rNSample)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    loadView()
  }
}
