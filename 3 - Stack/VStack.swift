import SwiftUI

struct VStack: View {
    var body: some View {
        VStack { // groups views vertically
            Text("This is VStack.") // displays text at top
            Text("This groups views vertically.") // displays text at middle
            Text("Just like this.") // displays text at bottom
        }
    }
}
