import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView { // sets up tab bars
            Text("Search View") // displays text
                .tabItem { // contains tab items
                    Image(systemName: "magnifyingglass") // displays a system icon named "magnifyingglasses"
                        .imageScale(.large) // makes icon larger
                    Text("Search") // displays text under icon
            }
            
            Text("Chat View") // displays text
                .tabItem { // contains tab items
                    Image(systemName: "text.bubble") // displays a system icon named "text.bubble"
                        .imageScale(.large) // makes icon larger
                    Text("Chat") // displays text under icon
            }
            
            Text("Profile View") // displays text
                .tabItem { // contains tab items
                    Image(systemName: "person") // displays a system icon named "person"
                        .imageScale(.large) // makes icon larger
                    Text("Profile") // displays text under icon
            }
            
            Text("Settings View") // displays text
                .tabItem { // contains tab items
                    Image(systemName: "gear") // displays a system icon named "gear"
                        .imageScale(.large) // makes icon larger
                    Text("Settings") // displays text under icon
            }
        }
    }
}
