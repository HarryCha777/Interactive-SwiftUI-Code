import SwiftUI

struct RoundedForm: View {
    var body: some View {
        Form { // groups sections in form
            Section(header: Text("Section One")) { // contains section
                Text("Item 1") // displays text
                Text("Item 2") // displays text
                Text("Item 3") // displays text
            }
            
            Section(header: Text("Section Two")) { // contains section
                Text("Item 1") // displays text
                Text("Item 2") // displays text
                Text("Item 3") // displays text
            }
            
            Section(header: Text("Section Three")) { // contains section
                Text("Item 1") // displays text
                Text("Item 2") // displays text
                Text("Item 3") // displays text
            }
        }
        .listStyle(GroupedListStyle()) // changes style of list to grouped
        .environment(\.horizontalSizeClass, .regular) // rounds form's corners
    }
}

