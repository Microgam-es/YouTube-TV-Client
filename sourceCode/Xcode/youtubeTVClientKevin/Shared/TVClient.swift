//
//  TVClient.swift
//  WebViewKit
//
//  Created by Andreas Rittsel.
//  Copyright © 2022 Andreas Rittsel. All rights reserved.
//

import SwiftUI

@main
struct YtClient: App {
    var body: some Scene {
        WindowGroup {
            RightClickableSwiftUIView()
        }
    }
}

struct RightClickableSwiftUIView: NSViewRepresentable {
    func updateNSView(_ nsView: RightClickableView, context: NSViewRepresentableContext<RightClickableSwiftUIView>) {
        print("Update")
    }   
    
    func makeNSView(context: Context) -> RightClickableView {
        RightClickableView()

    }
}

class RightClickableView: NSView {
    override func mouseDown(with theEvent: NSEvent) {
        print("left mouse")
    }
    
    override func rightMouseDown(with theEvent: NSEvent) {
        print("right mouse")
    }
}
