import SwiftUI

struct DestructiveAlert: View {
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Button(action: { // if clicked
            self.showAlert = true // sets showAlert to true
        }) {
            Text("Do NOT click me!") // displays text
        }
        .alert(isPresented: $showAlert) { // if showAlert is true
            Alert(title: Text("How dare you!"), message: Text("Notice the button below is red."), dismissButton: .destructive(Text("Cancel"))) // shows alert with destructive button
        } // automatically sets showAlert to false after alert is finished
    }
}
