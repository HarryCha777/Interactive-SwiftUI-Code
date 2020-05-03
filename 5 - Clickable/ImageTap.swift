import SwiftUI

struct ImageTap: View {
    @State private var showText = false // makes variable showText as false

    var body: some View {
        VStack { // groups views vertically
            Image("puppy") // displays a cute image saved as "puppy" in Assets folder
                .resizable() // makes image fill all available space on screen, which is required before resizing image
                .frame(width: 350, height: 350) // resizes image to specified width and height
                .onTapGesture { // if tapped
                    self.showText = true // sets showText to true
                }
            
            if showText { // if showText is true
                Text("The image above is tapped!") // displays text right under image above
            }
        }
    }
}
