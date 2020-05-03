import SwiftUI

struct SimpleTextField: View {
    @State private var name = "" // makes variable name as blank string

    var body: some View {
        TextField("Your Name", text: $name) // displays text field setting name
    }
}
