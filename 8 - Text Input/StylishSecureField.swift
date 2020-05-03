import SwiftUI

struct StylishSecureField: View {
    @State private var password = "" // makes variable password as blank string
    
    var body: some View {
        HStack() { // groups views horizontally
            Text("Password:") // displays text
                .bold() // makes text bold
            SecureField("Enter password here.", text: $password) // displays text field setting password
                .textFieldStyle(RoundedBorderTextFieldStyle()) // sets style to rounded boarder
        }
        .padding() // puts padding around secure field to ensure it doesn't touch the sides of screen
        
        if password.count > 0 { // if password is not blank
            Text("Your password's safe with me!") // displays text
        }
    }
}
