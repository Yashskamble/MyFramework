//
//  YashFile.swift
//  MyFramework
//
//  Created by Capgemini-DA230 on 9/26/22.
//


import Foundation
import UserNotifications
public class YashNotification {
    public init() {}
    let notificationcenter = UNUserNotificationCenter.current()
    public func localNotification() {
        let notficationContent = UNMutableNotificationContent()
        notficationContent.title = "CONGRATULATIONS"
        notficationContent.body = "Your Order Has Been Successfully Placed!!"
        notficationContent.badge = NSNumber(value: 1)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 7, repeats: false)
        let request = UNNotificationRequest(identifier: "notificationcheck", content: notficationContent, trigger: trigger)
        
        notificationcenter.add(request) { (error) in
            if let error = error {
                print("Notification error: ", error)
            }
            
        }
    }
}

