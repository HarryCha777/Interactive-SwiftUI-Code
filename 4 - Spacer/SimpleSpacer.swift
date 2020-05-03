import SwiftUI

struct SimpleSpacer: View {
    var body: some View {
        VStack { // groups views vertically
            Text("There is a spacer") // displays text at top
            Spacer() // puts spacer at the middle, which takes up all available space
            Text("in-between these two texts.") // displays text at bottom
        }
    }
}
