//
//  labelView.swift
//  SampleAppRN
//
//  Created by Simon Yang on 5/17/16.
//  Copyright © 2016 Simon Yang. All rights reserved.
//

import UIKit
import React

class LabelView: UIView {
  var label: UILabel!
  var bridge: RCTBridge!
  
  convenience init(text: String?) {
    self.init(frame: CGRectZero)
    if let text = text {
      label.text = text
    } else {
      label.text = "React Native Sample"
    }
  }
  
  convenience init() {
    self.init(text: nil)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.label = UILabel()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  func load() {
    let fixedX = (bounds.size.width - label.intrinsicContentSize().width) / 2
    let fixedY = (bounds.size.height - label.intrinsicContentSize().height) / 2
    label.frame = CGRectMake(fixedX, fixedY, label.intrinsicContentSize().width, label.intrinsicContentSize().height)    
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    load()
    addSubview(label)
  }
  
  override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)
    var trait = ""
    switch traitCollection.horizontalSizeClass {
    case .Regular:
      trait = "Regular"
    case .Compact:
      trait = "Compact"
    default:
      trait = "Unspecified"
    }
    bridge.eventDispatcher.sendAppEventWithName("traitCollectionChanged", body: trait)
  }
}