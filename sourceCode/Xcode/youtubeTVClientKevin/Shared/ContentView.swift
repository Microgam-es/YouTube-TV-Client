//
//  ContentView.swift
//  WebViewKit
//
//  Created by Andreas Rittsel.
//  Copyright © 2022 Andreas Rittsel. All rights reserved.
//

import SwiftUI
import WebViewKit

struct ContentView: View {
    
    let url = URL(string: "http://youtube.com/tv")
    
    var body: some View {
        webView
            .ignoresSafeArea()
    }
}

private extension ContentView {
    
    #if os(iOS)
    @ViewBuilder
    var safariWebView: some View {
        if let url = url {
            SafariWebView(url: url) { controller in
            }
        } else {
            Text("URL is nil")
        }
    }
    #endif
    
    var webView: some View {
        WebView(url: url) { webView in
            webView.customUserAgent = "Mozilla/5.0 (Microgam.es TV macOS/OS X; Microgam.es) AppleWebkit/538.1 (KHTML, like Gecko) Microgam.es-YT-TV-Client/1.1 tv Safari/538.1"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
