import SwiftUI

struct SimpleAlert: View {
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Button(action: { // if clicked
            self.showAlert = true // sets showAlert to true
        }) {
            Text("Click me to show an alert!") // displays text
        }
        .alert(isPresented: $showAlert) { // if showAlert is true
            Alert(title: Text("Good job!"), message: Text("You clicked on the button!"), dismissButton: .default(Text("OK"))) // shows alert
        } // automatically sets showAlert to false after alert is finished
    }
}
