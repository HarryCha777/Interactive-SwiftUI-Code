import SwiftUI

struct SimpleButton: View {
    @State private var showText = false // makes variable showText as false

    var body: some View {
        VStack { // groups views vertically
            Button(action: { // if clicked
                self.showText = true // sets showText to true
            }) {
                Text("Click me!") // displays text
            }
            
            if showText { // if showText is true
                Text("The button above is clicked!") // displays text right under button above
            }
        }
    }
}
