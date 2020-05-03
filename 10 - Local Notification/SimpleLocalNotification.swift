import SwiftUI
import UserNotifications // import user notification

struct SimpleLocalNotification: View {
    var body: some View {
        VStack {
            Button(action: { // if clicked
                self.schedule() // calls function named schedule
            }) {
                Text("Click me to show a local notification in 10 seconds!") // displays text
                .padding() // puts padding around text to ensure it doesn't touch the sides of screen
            }
            
            Text("After clicking on the button, please turn off the device's screen for local notification to work properly.") // displays text
                .padding() // puts padding around text to ensure it doesn't touch the sides of screen
        }
    }
    
    func schedule() { // function that asks for notification permission and schedules notification
        UNUserNotificationCenter.current().getNotificationSettings { notificationSettings in
            switch notificationSettings.authorizationStatus {
            case .notDetermined:
                self.requestPermission() // calls function named requestPermissions
            case .authorized, .provisional:
                self.scheduleNotifications() // calls function named scheduleNotifications
            default:
                break
            }
        }
    }
    
    func requestPermission() { // function that requests permission
        UNUserNotificationCenter
            .current()
            .requestAuthorization(options: [.alert, .sound]) { granted, error in
                if granted == true && error == nil { // if permission is granted
                    self.scheduleNotifications() // calls function named scheduleNotifications
                }
        }
    }
    
    func scheduleNotifications() { // function that schedules notification in 10 seconds
        let content = UNMutableNotificationContent() // makes UMMutableNotificationContent variable
        content.title = "Hi there!" // adds a title
        content.body = "I'm a local notification!" // adds a message

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false) // sets to notify in 10 seconds
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger) // makes UNNotificationRequest variable
        UNUserNotificationCenter.current().add(request) // requests notification
    }
}
