//
//  MainVC.swift
//  Swifty
//
//  Created by Nordin on 28/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit



class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("viewDidLoad()");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressButton(sender: AnyObject) {
        let snippets = SwiftSnippets()
        snippets.myFunctionOne()
        snippets.myFunctionTwo("Hello dunya")
        snippets.myFunctionThree(3, var2: 5)
        snippets.myFunctionFour(6, var2: 8)
        snippets.myFunctionPrint()
        snippets.myFunctionTwo(snippets.myFunctionRetrun())
        snippets.myarray()
        snippets.myarrayOne()
        snippets.myArrayDictionary()
        snippets.reallyCoolFunc()
    }
    
    
   
}
