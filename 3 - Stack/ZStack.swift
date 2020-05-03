import SwiftUI

struct ZStack: View {
    var body: some View {
        ZStack { // groups views by depth
            Image("puppy") // displays a cute image saved as "puppy" in Assets folder
            Text("This is ZStack.\nThis groups views by depth.\nJust like this.") // displays text over the image
                .bold() // makes text bold to make it easier to see
                .foregroundColor(Color.white) // makes text white to make it easier to see
        }
    }
}
