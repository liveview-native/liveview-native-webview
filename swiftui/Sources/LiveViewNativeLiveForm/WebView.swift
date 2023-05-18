//
//  WebView.swift
//  Scratchboard
//
//  Created by May Matyi on 5/17/23.
//

import SwiftUI
import WebKit
import LiveViewNative

#if os(macOS)
struct WebView: NSViewRepresentable {
    var element: ElementNode
 
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateNSView(_ webView: WKWebView, context: Context) {
        if let url = element.attributeValue(for: "url") {
            let request = URLRequest(url: URL(string: url)!)

            webView.load(request)
        }
    }
}
#else
struct WebView: UIViewRepresentable {
    var element: ElementNode
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        if let url = element.attributeValue(for: "url") {
            let request = URLRequest(url: URL(string: url)!)

            webView.load(request)
        }
    }
}
#endif
