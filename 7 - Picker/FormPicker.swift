import SwiftUI

struct FormPicker: View {
    @State private var selectedIndex = 0 // makes variable selectedIndex as 0
    var colors = ["Red", "Blue", "Green"] // makes variable colors list as "Red", "Blue", and "Green"

    var body: some View {
        Form { // contains views in form
            Text("What is your favorite color?") // displays text
            
            Picker("Favorite Color:", selection: $selectedIndex) { // displays picker setting selectedIndex and doesn't hide label because it's actually useful in this case
                ForEach(0 ..< colors.count) { index in // loops through colors list
                    Text(self.colors[index]) // displays text for each color
                }
            }
            
            Text("Your favorite color is \(colors[selectedIndex]).") // displays text with favorite color
        }
    }
}
