import SwiftUI

struct SegmentedPicker: View {
    @State private var selectedIndex = 0 // makes variable selectedIndex as 0
    var colors = ["Red", "Blue", "Green"] // makes variable colors list as "Red", "Blue", and "Green"

    var body: some View {
        Text("What is your favorite color?") // displays text
        
        Picker("Colors Label", selection: $selectedIndex) { // displays picker setting selectedIndex
            ForEach(0 ..< colors.count) { index in // loops through colors list
                Text(self.colors[index]) // displays text for each color
            }
        }
        .pickerStyle(SegmentedPickerStyle()) // sets style to segmented and automatically hides label
        
        Text("Your favorite color is \(colors[selectedIndex]).") // displays text with favorite color
    }
}
