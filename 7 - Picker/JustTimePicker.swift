import SwiftUI

struct JustTimePicker: View {
    @State private var wakeUpTime = Date() // makes variable wakeUpTime as current date and time
    
    var body: some View {
        Text("When did you wake up today?") // displays text
        
        DatePicker("Date Label", selection: $wakeUpTime, in: ...Date(), displayedComponents: .hourAndMinute) // displays date picker setting wakeUpTime
            .labelsHidden() // hides label "Date Label" because it's useless
    }
}
