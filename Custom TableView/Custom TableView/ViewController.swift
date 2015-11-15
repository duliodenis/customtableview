//
//  ViewController.swift
//  Custom TableView
//
//  Created by Dulio Denis on 11/11/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["http://application.denofgeek.com/images/gb/25bb/gremlins2.jpg", "http://i164.photobucket.com/albums/u18/bouska27/Krech.jpg", "http://2.bp.blogspot.com/-Hh_d2xT2Tt8/TnFDu58-2qI/AAAAAAAAAaE/T2375dUHPWk/s1600/frog.jpg", "http://2.bp.blogspot.com/_akoHdI9I4bY/SAQnLzHA-MI/AAAAAAAABbE/q362WkqIIZ8/s320/Ugly.jpg", "https://s-media-cache-ak0.pinimg.com/236x/49/52/eb/4952ebd6db3652b8c49058952b05fb44.jpg"]
    var uglyTitles = ["Not bad", "Don't bring this home", "No, thanks", "Somebody turn this off", "Yikes"]
    
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    // MARK: TableView Delegate Methods
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("uglyCell") as? UglyCell {
            
            var image: UIImage!
            
            // Download image from the internet
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                image = UIImage(data: data)
            } else {
                image = UIImage(named: "uglyFace.jpg")
            }
            
            cell.configureCell(image, text: uglyTitles[indexPath.row])
            return cell
        } else {
            return UglyCell()
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
}

