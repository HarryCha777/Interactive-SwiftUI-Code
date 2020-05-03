import SwiftUI

struct FormDatePicker: View {
    @State private var installDate = Date() // makes variable installDate as current date and time
    
    var body: some View {
        Form { // contains views in form
            Text("When did you install this app?") // displays text
            
            DatePicker("Install Date and Time:", selection: $installDate) // displays date picker setting installDate and doesn't hide label because it's actually useful in this case
        }
    }
}
