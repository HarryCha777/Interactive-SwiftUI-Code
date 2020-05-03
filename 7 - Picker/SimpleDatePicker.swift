import SwiftUI

struct SimpleDatePicker: View {
    @State private var installDate = Date() // makes variable installDate as current date and time

    var body: some View {
        Text("When did you install this app?") // displays text

        DatePicker("Date Label", selection: $installDate) // displays date picker setting installDate
            .labelsHidden() // hides label "Date Label" because it's useless
        
        Text("You installed this app around \(installDate).\n") // displays text with install date
            .fixedSize(horizontal: false, vertical: true) // prevents this long text from collapsing vertically
    }
}
