//
//  SwiftUtils.swift
//  Swifty
//
//  Created by Nordin on 30/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit

class SwiftUtils: NSObject {

    class func getDocumentsURL() -> NSURL {
        let documentsURL = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)[0]
        return documentsURL
    }
    
    class func filePathInDocumentsDirectory(filename: String) -> String {
        
        let fileURL = getDocumentsURL().URLByAppendingPathComponent(filename)
        return fileURL.path!
        
    }
    
    class func fileInDocumentsDirectory(filename: String) -> NSURL {
        
        let fileURL = getDocumentsURL().URLByAppendingPathComponent(filename)
        return fileURL
        
    }
    
    // This method is not yet tested.
    class func convertTimeString(timeStamp: Int) -> String {
        let date = NSDate(timeIntervalSince1970: NSTimeInterval(timeStamp)) as NSDate
        
        let formatter = NSDateFormatter();
        formatter.dateFormat = "dd-MM-yyyy 'at' HH:mm:ss";
        let formattedDate = formatter.stringFromDate(date);

        // "2015-04-01 12:52:00 +0000" <-- same date, now in UTC
        return formattedDate
        // http://www.brianjcoleman.com/tutorial-nsdate-in-swift/
    }

}
