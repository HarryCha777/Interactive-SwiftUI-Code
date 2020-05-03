import SwiftUI

struct CustomStepper: View {
    @State private var age = 20 // makes variable age as 20
    @State private var increased = false // makes variable increased as false
    @State private var decreased = false // makes variable decreased as false

    var body: some View {
        VStack { // groups views vertically
            Stepper("What is your age?", onIncrement: { // displays stepper and if increased
                if self.age < 120 { // if age is less than 120 because you probably aren't over 120
                    self.age += 1 // adds 1 to age
                    self.increased = true // sets increased to true
                    self.decreased = false // sets decreased to false
                }
            }, onDecrement: { // if decreased
                if self.age > 0 { // if age is greater than zero because your age can't be negative
                    self.age -= 1 // subtracts 1 from age
                    self.increased = false // sets increased to false
                    self.decreased = true // sets decreased to true
                }
            })
            .padding() // puts padding around stepper to ensure it doesn't touch the sides of screen
            
            Text("Your age is \(age).") // displays text with age
            
            if increased { // if increased is true
                Text("You added to your age.") // displays text
            }
            
            if decreased { // if decreased is true
                Text("You substacted from your age.") // displays text
            }
        }
    }
}
