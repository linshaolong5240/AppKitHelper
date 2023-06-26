//
//  SPAspectFillImageView.swift
//  AppKitHelper
//
//  Created by sauron on 2023/6/24.
//  Copyright © 2023 com.sauronpi. All rights reserved.
//

import SwiftUI

class SPAspectFillImageView: NSView {
    override var wantsUpdateLayer: Bool { true }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        // 使用 CALayer 管理渲染视图
        self.wantsLayer = true
        self.backgroundColor = .red
        self.layer?.contentsGravity = .resizeAspectFill
        self.layer?.contents = NSImage(systemSymbolName: "swift", accessibilityDescription: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateLayer() {
        
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}

struct SPAspectFillImageView_Previews: PreviewProvider {
    static var previews: some View {
        PlatformViewRepresent(SPAspectFillImageView())
            .frame(width: 100, height: 50)
    }
}

