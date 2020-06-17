import SwiftUI

struct List: View {
    var body: some View {
        List { // groups sections in list
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
    }
}

