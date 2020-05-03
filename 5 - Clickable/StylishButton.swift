import SwiftUI

struct StylishButton: View {
    @State private var showText = false // makes variable showText as false

    var body: some View {
        VStack { // groups views vertically
            Button(action: { // if clicked
                self.showText = true // sets showText to true
            }) {
                HStack { // groups views horizontally
                    Text("Click me !") // displays text
                        .bold() // makes text bold
                        .font(.largeTitle) // makes text larger
                    Image(systemName: "hand.thumbsup.fill") // displays a system icon named "hand.thumbsup.fill"
                        .font(.largeTitle) // makes icon larger
                }
                .padding() // puts padding around button
                .foregroundColor(.white) // makes button white
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)) // makes button's background gradient from blue at top to purple at bottom
                .cornerRadius(30) // rounds corners
            }
        }
        
        if showText { // if showText is true
            Text("The button above is clicked!") // displays text right under button above
        }
    }
}
