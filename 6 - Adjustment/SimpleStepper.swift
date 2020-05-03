import SwiftUI

struct SimpleStepper: View {
    @State private var sleepHours = 7.0 // makes variable sleepHours as 7.0

    var body: some View {
        VStack { // groups views vertically
            Stepper("How many hours did you sleep last night?", value: $sleepHours, in: 0...24, step: 0.25) // displays stepper setting sleepHours from 0 to 24 with step of 0.25
                .padding() // puts padding around stepper to ensure it doesn't touch the sides of screen
            
            Text("You slept \(sleepHours, specifier: "%.2f") hours last night.") // displays text and prints sleepHours rounded to 2 decimal places
        }
    }
}
