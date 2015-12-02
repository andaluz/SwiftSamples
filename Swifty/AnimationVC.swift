//
//  AnimationVC.swift
//  Swifty
//
//  Created by Nordin on 01/10/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit
import AudioToolbox

class AnimationVC: UIViewController {

    @IBOutlet weak var floatingButton: UIButton!
    
    @IBOutlet weak var slideMenu: UIView! //it has a widt of 240 + 20 margin
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initializeNavigationBar()
    }
    
    func initializeNavigationBar() {
        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItemStyle.Plain, target: self, action: "didPressNavMenu")
        self.navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
    }
    
    func didPressNavMenu() {
        print("Menu button pressed")
        
        slideInMenu(true)
    }
    
    func slideInMenu(yes: Bool) {
        UIView.animateWithDuration(0.3, delay: 0.0, options: .CurveEaseOut, animations: {
            
            struct Holder {
                static var show = true
            }
            
            
            var x: CGFloat = 0.0
            
            if Holder.show {
                x = self.view.frame.width - self.slideMenu.frame.width
                Holder.show = false
            } else {
                x = self.view.frame.width
                Holder.show = true
            }
            
            self.slideMenu.frame = CGRectMake(x, self.slideMenu.frame.origin.y, self.slideMenu.frame.size.width, self.slideMenu.frame.size.height)
            
            }, completion: { finished in
                print("Animation floating button finished!")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        // dispatch is necessary otherwise, aimation won't work.
        // maybe because at this point the floating button is not yet layoued out
        dispatch_async(dispatch_get_main_queue(), {
        self.performFloatingAnimation()
        })
        
    }
    
    override func viewDidLayoutSubviews() {
        // This method is not necessary
    }
    
    @IBAction func didPressFloatingButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, delay: 0.0, options: .CurveEaseOut, animations: {
            let y = 0 - self.floatingButton.frame.height
            self.floatingButton.frame = CGRectMake(self.floatingButton.frame.origin.x, y, self.floatingButton.frame.size.width, self.floatingButton.frame.size.height)
            
            }, completion: { finished in
                print("Animation floating button finished!")
        })
    }

    @IBAction func didPressError(sender: AnyObject) {
        self.shakeView(sender as! UIView)
    }

    func performFloatingAnimation() {
        print("Start animating!")
        UIView.animateWithDuration(0.5, delay: 0.0, options: .CurveEaseOut, animations: {
            let y = self.view.frame.size.height/2
            self.floatingButton.frame = CGRectMake(self.floatingButton.frame.origin.x, y, self.floatingButton.frame.size.width, self.floatingButton.frame.size.height)
            
            }, completion: { finished in
                print("Animation floating button finished!")
        })
    }
    
    func shakeView(viewToShake:UIView) {
        let t: CGFloat = 10.0
        let translateRight: CGAffineTransform  = CGAffineTransformTranslate(CGAffineTransformIdentity, t, 0.0)
        let translateLeft: CGAffineTransform = CGAffineTransformTranslate(CGAffineTransformIdentity, -t, 0.0)
        
        viewToShake.transform = translateLeft
        
        let options: UIViewAnimationOptions = [UIViewAnimationOptions.Autoreverse,UIViewAnimationOptions.Repeat]
        UIView.animateWithDuration(0.07, delay: 0.0, options: options , animations: {
            UIView.setAnimationRepeatCount(4.0)
            viewToShake.transform = translateRight
            }, completion: { finished in
                if (finished) {
                    let option: UIViewAnimationOptions = UIViewAnimationOptions.BeginFromCurrentState
                    UIView.animateWithDuration(0.05, delay: 0.0, options: option, animations: {
                        viewToShake.transform = CGAffineTransformIdentity;
                        }, completion: { finished in
                            if (finished) {
                                
                            }
                    })
                }
            })
        
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate));
    }
    
    /**
    * How it works the easy way: You add a gesture object in Storyboard, than
    * Than ctr+drag the gesture object to the source file and add action to it.
    * You don't have to add delegate and so on, it's just that easy :)
    */
    @IBAction func didRecognisedEdgePanGesture(sender: UIScreenEdgePanGestureRecognizer) {
        print("Edge Gesture Recognized")
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Edge Gesture Began!")
            slideInMenu(true)
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
