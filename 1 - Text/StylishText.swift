import SwiftUI

struct StylishText: View {
    var body: some View {
        Text("SwiftUI rocks!") // displays a text
            .bold() // makes text bold
            .font(.largeTitle) // makes text larger
            .foregroundColor(Color.blue) // makes text blue
            .background(Color.yellow) // makes text's background yellow
    }
}
