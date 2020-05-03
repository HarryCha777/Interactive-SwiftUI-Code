import SwiftUI

struct FixedSpacer: View {
    var body: some View {
        VStack { // groups views vertically
            Text("There is a spacer of fixed size") // displays text at top
            Spacer() // puts spacer at middle
                .frame(height: 100) // resizes spacer to specified height
            Text("in-between these two texts.") // displays text at bottom
        }
    }
}
