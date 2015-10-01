//
//  MyTableVC.swift
//  Swifty
//
//  Created by Nordin on 29/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit

class MyTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var myArray: [AnyObject] = [AnyObject]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.initializeArray()
    }
    
    func initializeArray() {
        myArray.append("This is item 1")
        myArray.append("This is item 2")
        myArray.append("This is item 3")
        myArray.append("This is item 4")
        myArray.append("This is item 5")
        myArray.append("This is item 6")
        myArray.append("This is item 7")
        myArray.append("This is item 8")
        myArray.append("This is item 9")
        myArray.append("This is item 10")
        myArray.append("This is item 11")
        myArray.append("This is item 12")
        myArray.append("This is item 13")
        myArray.append("This is item 14")
        myArray.append("This is item 15")
        myArray.append("This is item 16")
        myArray.append("This is item 17")
        myArray.append("This is item 18")
        myArray.append("This is item 19")   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 0
    }
    */

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: SampleCell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath) as! SampleCell
        
        // Configure the cell...
        let title: String = myArray[indexPath.row] as! String
        cell.title?.text = title
        cell.thumb?.image = UIImage(named: "parrot-icon.png")
        
        return cell
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
