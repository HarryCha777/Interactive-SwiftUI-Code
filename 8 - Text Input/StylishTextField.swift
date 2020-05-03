import SwiftUI

struct StylishTextField: View {
    @State private var name = "" // makes variable name as blank string

    var body: some View {
        HStack() { // groups views horizontally
            Text("Your Name:") // displays text
                .bold() // makes text bold
            TextField("Enter your name here.", text: $name) // displays text field setting name
                .textFieldStyle(RoundedBorderTextFieldStyle()) // sets style to rounded boarder
        }
        .padding() // puts padding around text field to ensure it doesn't touch the sides of screen
        
        if name.count > 0 { // if name is not blank
            Text("Nice to meet you, \(name).") // displays text with name
        }
    }
}
