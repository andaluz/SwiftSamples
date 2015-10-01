//
//  MainVC.swift
//  Swifty
//
//  Created by Nordin on 28/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit



class MainVC: UIViewController {
    
    var exampleList: [AnyObject] = [AnyObject]()

    // This button is from a separate XIB file. By setting the File Owner
    // to this class, you can add an outlet as you normally do from a storyboard :)
    //@IBOutlet var floatingButton: UIButton!
    //var floatingButton : UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("viewDidLoad()");
        
        

        self.initializeExampleList()
    }
    
    override func viewDidAppear(animated: Bool) {
        // Not working.
        //floatingButton.frame = CGRectMake(10, 10, floatingButton.frame.size.width, floatingButton.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    /*
    func initializeFloatingButton() {
        floatingButton = NSBundle.mainBundle().loadNibNamed("SomeObject", owner: self, options: nil) as UIButton
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressButton(sender: AnyObject) {
        // Method 1
        //let vc: MyTableVC = self.storyboard!.instantiateViewControllerWithIdentifier("tableView") as! MyTableVC
        //self.presentViewController(vc, animated: true, completion: nil)
        
        print("Floating button pressed!")
    }
    
    func testSomeMethods() {
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
    
    
    func initializeExampleList() {
        exampleList.append("Custom table cell")
        exampleList.append("Tabbar Controller")
        exampleList.append("Animations")
        exampleList.append("This is item 4")
        exampleList.append("This is item 5")
        exampleList.append("This is item 6")
        exampleList.append("This is item 7")
        exampleList.append("This is item 8")
        exampleList.append("This is item 9")
        exampleList.append("This is item 10")
        exampleList.append("This is item 11")
        exampleList.append("This is item 12")
        exampleList.append("This is item 13")
        exampleList.append("This is item 14")
        exampleList.append("This is item 15")
        exampleList.append("This is item 16")
        exampleList.append("This is item 17")
        exampleList.append("This is item 18")
        exampleList.append("This is item 19")
    }
   
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        // Configure the cell...
        let title: String = exampleList[indexPath.row] as! String
        cell.textLabel?.text = title
        cell.imageView?.image = UIImage(named: "parrot-icon.png")
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        switch indexPath.row {
        case 0:
            self.performSegueWithIdentifier("segueCustomCell", sender: nil)
        case 1:
            self.performSegueWithIdentifier("segueTabBar", sender: nil)
        case 2:
            self.performSegueWithIdentifier("segueAnimation", sender: nil)
        default:
            print("Item \(indexPath.row)")
        }
    }
    
}
