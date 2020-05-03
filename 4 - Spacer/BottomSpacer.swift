import SwiftUI

struct BottomSpacer: View {
    var body: some View {
        VStack { // groups views vertically
            Spacer() // puts spacer at top, which takes up all available space
            Text("This text is a bit above the bottom.") // displays text under top spacer
            Spacer() // puts spacer at bottom
                .frame(minHeight: 20, maxHeight: 50) // resizes spacer to maximum height possible in specified range
        }
    }
}
