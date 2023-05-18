//
//  WebViewRegistry.swift
//  LiveViewNativeWebView
//
//  Created by May Matyi on 5/18/23.
//

import LiveViewNative
import SwiftUI

/// This registry provides the Live Form elements.
///
/// This provides the `<WebView>` and `<LiveSubmitButton>` elements, which allow for grouping form controls together and submitting their data together.
///
/// - Note: `<WebView>` only groups form data, it does not alter the presentation of the elements inside it.
///
/// Add it to your app using an `AggregateRegistry`:
/// ```swift
/// struct AppRegistries: AggregateRegistry {
///     typealias Registries = Registry2<
///         MyRegistry,
///         WebViewRegistry<Self>
///     >
/// ```
public struct WebViewRegistry<Root: RootRegistry>: CustomRegistry {
    public enum TagName: String {
        case webView = "WebView"
    }
    
    public static func lookup(_ name: TagName, element: ElementNode) -> some View {
        switch name {
        case .webView:
            WebView(element: element)
        }
    }
}
