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
        
        /////////////////////////
        
        let notification = UILocalNotification()
        //notification.timeZone = NSTimeZone.defaultTimeZone()
        let dateTime = NSDate(timeIntervalSinceNow: 0)
        notification.fireDate = dateTime
        notification.alertBody = "Test"
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        */
        
        guard let settings = UIApplication.sharedApplication().currentUserNotificationSettings() else { return }
        if settings.types == .None {
            let ac = UIAlertController(title: "Can't schedule", message: "Either we don't have permission to schedule notifications, or we haven't asked yet.", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(ac, animated: true, completion: nil)
            return
        } else {
            let localNotification: UILocalNotification = UILocalNotification()
            localNotification.alertAction = "This is a alert action message"
            localNotification.alertBody = "Time has come!!!"
            localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
            
            //badge
            localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
            UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        }
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
