import SwiftUI

struct FlexibleSpacer: View {
    var body: some View {
        VStack { // groups views vertically
            Text("There is a flexible spacer") // displays text at top
            Spacer() // puts spacer at middle
                .frame(minHeight: 50, maxHeight: 100) // resizes spacer to maximum height possible in specified range
            Text("in-between these two texts.") // displays text at bottom
        }
    }
}
