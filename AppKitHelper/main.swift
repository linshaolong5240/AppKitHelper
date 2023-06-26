//
//  main.swift
//  AppKitHelper
//
//  Created by sauron on 2023/6/22.
//  Copyright © 2023 com.sauronpi. All rights reserved.
//

import AppKit

// 1
let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

// 2
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
