import SwiftUI

struct ActionAlert: View {
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Button(action: { // if clicked
            self.showAlert = true // sets showAlert to true
        }) {
            Text("Open YouTube.") // displays text
        }
        .alert(isPresented: $showAlert) { // if showAlert is true
            Alert(title: Text("Click on the button below to open YouTube!"), dismissButton: .default(Text("Take me to YouTube."), action: { // shows alert and if clicked
                guard let url = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ") else { return } // sets url
                UIApplication.shared.open(url) // opens url
            }))
        } // automatically sets showAlert to false after alert is finished
    }
}
