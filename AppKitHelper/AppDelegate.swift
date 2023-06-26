//
//  AppDelegate.swift
//  AppKitHelper
//
//  Created by sauron on 2023/6/22.
//  Copyright © 2023 com.sauronpi. All rights reserved.
//

import Cocoa
import SwiftUI
//@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var windowController: NSWindowController!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false)
        window.center()
        window.title = "No Storyboard Window"
        let vc = NSBaseViewController()
        window.contentView = vc.view
//        window.contentViewController = NSBaseViewController()
//        window.contentViewController = NSBaseViewController()
//        window.makeKeyAndOrderFront(nil)
        
        windowController = NSWindowController(window: self.window)
        windowController.contentViewController = vc
        windowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

