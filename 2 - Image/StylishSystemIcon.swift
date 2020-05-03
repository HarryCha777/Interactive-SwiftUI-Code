import SwiftUI

struct StylishSystemIcon: View {
    var body: some View {
        Image(systemName: "person.circle.fill") // displays a system icon named "person.circle.fill"
            .font(.largeTitle) // makes icon larger
            .foregroundColor(Color.blue) // makes icon blue
    }
}
