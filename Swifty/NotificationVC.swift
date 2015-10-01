//
//  NotificationVC.swift
//  Swifty
//
//  Created by Nordin on 01/10/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNotifyButton(sender: UIButton) {
        print("Button pressed!")
        /*
        UILocalNotification *localNotification = [[UILocalNotification alloc] init];
        localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
        localNotification.alertBody = @"new Blog Posted at iOScreator.com";
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
        */
        
        /*
        let notification = UILocalNotification()
        //notification.timeZone = NSTimeZone.defaultTimeZone()
        
        let dateTime = NSDate(timeIntervalSinceNow: 0)
        notification.fireDate = dateTime
        notification.alertBody = "Test"
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        */
        var localNotification: UILocalNotification = UILocalNotification()
        localNotification.alertAction = "Testing notifications on iOS9"
        localNotification.alertBody = "Woww it works!!"
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
