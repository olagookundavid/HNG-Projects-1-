//
//  WebView.swift
//  HNG Project Stage 1
//
//  Created by David OH on 10/09/2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // This space can be left blank
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            print("Webview started loading.")
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Webview finished loading.")
        }

        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("Webview failed with error: \(error.localizedDescription)")
        }
    }
}
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://github.com/olagookundavid")!)
    }
}
