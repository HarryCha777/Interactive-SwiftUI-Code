import SwiftUI

struct JustDatePicker: View {
    @State private var birthDate = Date() // makes variable birthDate as current date and time
    
    var body: some View {
        Text("When is your birthday?") // displays text
        
        DatePicker("Date Label", selection: $birthDate, in: ...Date(), displayedComponents: .date) // displays date picker setting birthDate
            .labelsHidden() // hides label "Date Label" because it's useless
    }
}
