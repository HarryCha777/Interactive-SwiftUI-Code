import SwiftUI

struct TextTap: View {
    @State private var showText = false // makes variable showText as false

    var body: some View {
        VStack { // groups views vertically
            Text("Tap me to show text below.") // displays text
                .onTapGesture { // if tapped
                    self.showText = true // sets showText to true
                }
            
            if showText { // if showText is true
                Text("The text above is tapped!") // displays text right under text above
            }
        }
    }
}
