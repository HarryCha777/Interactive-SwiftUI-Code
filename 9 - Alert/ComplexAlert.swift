import SwiftUI

struct ComplexAlert: View {
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Button(action: { // if clicked
            self.showAlert = true // sets showAlert to true
        }) {
            Text("How do you like this app?") // displays text
        }
        .alert(isPresented: $showAlert) { // if showAlert is true
            Alert(title: Text("You've come so far, I'm proud of you!"), message: Text("If you learned some SwiftUI from this app, would you mind rating this app on App Store?"), primaryButton: .default(Text("Sure, take me there!"), action: { // shows alert and if clicked
                self.linkToReview() // calls function named linkToReview
            }), secondaryButton: .destructive(Text("Not really, take me back."))) // makes secondary destructive button
        } // automatically sets showAlert to false after alert is finished
    }
    
    func linkToReview() { // function that links to app review
        guard let productURL = URL(string: "https://apps.apple.com/app/id1505570242") else { return } // sets url
        
        var components = URLComponents(url: productURL, resolvingAgainstBaseURL: false) // makes variable components as URLComponents of productURL
        components?.queryItems = [
            URLQueryItem(name: "action", value: "write-review") // prepares components to navigate to review section immediately
        ]
        
        guard let writeReviewURL = components?.url else { return } // sets url to immediately navigate to write review
        UIApplication.shared.open(writeReviewURL) // opens url
    }
}
