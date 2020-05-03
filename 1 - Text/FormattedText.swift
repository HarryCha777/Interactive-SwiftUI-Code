import SwiftUI

struct FormattedText: View {
    @State private var vars = "variables" // makes variable vars as "variables"
    @State private var nums = "numbers" // makes variable nums as "numbers"
    @State private var pi = 3.141593 // makes variable pi as 3.141593

    var body: some View {
        Text("This text displays \(vars), whether the \(vars) are strings or \(nums).\n") // displays text using variables
            .italic() // makes text italic
            + // adds the two texts
            Text("For example, π is approximately \(pi), and it can be further rounded to two decimal places: \(pi, specifier: "%.2f").") // displays text using variables and prints pi rounded to 2 decimal places at the end, but pi's value doesn't actually change
                .underline() // underlines text
    }
}
