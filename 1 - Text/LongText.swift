import SwiftUI

struct LongText: View {
    var body: some View {
        Text("This is obviously a super duper long text that most likely cannot possibly fit in one line of any given screen, and this lengthy text is aligned center and spaced out evenly.") // displays a super long text
            .multilineTextAlignment(.center) // centers text
            .lineSpacing(30) // puts some exta space in-between each line
            .padding() // puts padding around text to ensure it doesn't touch the sides of screen
    }
}
