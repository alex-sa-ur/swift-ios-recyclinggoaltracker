//
//  Goals_ViewController.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/29/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import UIKit
import UserNotifications

class Profile_ViewController: UIViewController {
    @IBOutlet var nameField: UITextField!
    @IBOutlet var levelLabel: UILabel!
    @IBOutlet var pointsLabel: UILabel!
    
    static let sharedInstance = Profile_ViewController()
    var profile : Profile = ProfileUtils().createProfile()
    
    func pointDisplay() -> String {
        var displayNum: String = ""
        
        if Profile_ViewController.sharedInstance.profile.getLevel().getLevel() < 100 {
            if Profile_ViewController.sharedInstance.profile.getLevel().getPointsAcquired() < 100 {
                if Profile_ViewController.sharedInstance.profile.getLevel().getPointsAcquired() < 10 {
                    displayNum += "0"
                }
                displayNum += "0"
            }
            
            displayNum += String(Profile_ViewController.sharedInstance.profile.getLevel().getPointsAcquired()) + "/"
            
            if Profile_ViewController.sharedInstance.profile.getLevel().getPointsNeeded() < 100 {
                if Profile_ViewController.sharedInstance.profile.getLevel().getPointsNeeded() < 10 {
                    displayNum += "0"
                }
                displayNum += "0"
            }
            
            displayNum += String(Profile_ViewController.sharedInstance.profile.getLevel().getPointsNeeded())
            
        } else {
            displayNum = "---/---"
        }
        
        return displayNum
    }
    
    func loadProfile(){
        nameField.text = Profile_ViewController.sharedInstance.profile.getName()
        
        if Profile_ViewController.sharedInstance.profile.getLevel().getLevel() < 100 {
            levelLabel.text = String(Profile_ViewController.sharedInstance.profile.getLevel().getLevel())
        } else {
            levelLabel.text = "100"
        }
        
        
        pointsLabel.text = pointDisplay()
    }
    
    @IBAction func changeName(){
        Profile_ViewController.sharedInstance.profile.setName(nm: nameField.text!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadProfile()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]){
            (granted, error) in if granted {
                //print("yes")
            } else {
                //print ("No")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        loadProfile()
    }
    
    @IBAction func sendNotification( _ sender: Any) {
        var date = DateComponents()
        date.hour = 8
        date.minute = 00
        
        let content = UNMutableNotificationContent()
        content.title = "Green Goals"
        content.subtitle = "Recycle Reminder!"
        content.body = "Don't forget to recycle and reach your goals!"
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let request = UNNotificationRequest(identifier: "notification.1", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
