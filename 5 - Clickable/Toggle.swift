import SwiftUI

struct Toggle: View {
    @State private var showText = false // makes variable showText as false

    var body: some View {
        VStack {
            Toggle(isOn: $showText) { // displays toggle setting showText
                Text("Toggle me on to show text below.") // displays text for toggle
            }
            .padding() // puts padding around toggle to ensure it doesn't touch the sides of screen
            
            if showText { // if showText is true
                Text("The toggle above is toggled on!") // displays text right under toggle above
            }
        }
    }
}
