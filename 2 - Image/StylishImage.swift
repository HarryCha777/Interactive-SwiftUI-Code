import SwiftUI

struct StylishImage: View {
    var body: some View {
        Image("puppy") // displays a cute image saved as "puppy" in Assets folder
            .resizable() // makes image fill all available space on screen, which is required before resizing image
            .frame(width: 350, height: 350) // resizes image to specified width and height
            .clipShape(Circle()) // clips image with shape circle
            .overlay(Circle().stroke(Color.white, lineWidth: 5)) // puts white boarder around image
            .shadow(radius: 10) // displays shadow around image
    }
}
