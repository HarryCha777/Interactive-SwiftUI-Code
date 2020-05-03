import SwiftUI

struct HStack: View {
    var body: some View {
        HStack { // groups views horizontally
            Text("This is HStack.") // displays text at left
            Text("This groups views horizontally.") // displays text at middle
            Text("Just like this.") // displays text at right
        }
    }
}
