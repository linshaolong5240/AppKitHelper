//
//  AppKirHelper.swift
//  AppKitHelper
//
//  Created by sauron on 2023/6/24.
//  Copyright © 2023 com.sauronpi. All rights reserved.
//

import AppKit

extension NSView {
    var backgroundColor: NSColor? {
        get {
            guard let cgColor = self.layer?.backgroundColor else {
                return nil
            }
            return NSColor(cgColor: cgColor)
        }
        set { self.layer?.backgroundColor = newValue?.cgColor }
    }
}
