import SwiftUI
import WebKit // import web kit

struct Web: View {
    @State private var url = "https://www.google.com" // sets variable url to Google's URL
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string: url)!)) // contains web
    }
}

struct WebView: UIViewRepresentable { // makes UIViewRepresentable struct
    let request: URLRequest // receives URL Request
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView() // returns WKWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request) // loads URL request
    }
}
