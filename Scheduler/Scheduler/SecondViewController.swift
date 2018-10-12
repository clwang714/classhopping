//
//  SecondViewController.swift
//  Scheduler
//
//  Created by Chris W. on 6/17/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    let userDefaults = NSUserDefaults.standardUserDefaults()

    var selectedIndexPath: NSIndexPath?
    var names = ["Class A", "Class B", "Class C", "Class D", "Class E", "Class F", "Class G"]
    var colors = [215,238,217, 203,217,207, 221,198,194, 174,193,251, 225,205,225, 255,230,235, 255,193,196]
    //MARK: Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.contentInset.top = 20
        
        tableView.tableFooterView = UIView()
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CellATableViewCell
        
        if(userDefaults.objectForKey("classNameText"+String(indexPath.row)) == nil)
        {
            cell.className.text = names[indexPath.row]
            cell.classNameText.placeholder = "Class Name"
        }
        else
        {
            cell.className.text = (userDefaults.objectForKey("classNameText"+String(indexPath.row)) as! String)
            cell.classNameText.placeholder = (userDefaults.objectForKey("classNameText"+String(indexPath.row)) as! String)
        }
        
        if(userDefaults.objectForKey("classRoomText"+String(indexPath.row)) == nil)
        {
            cell.classRoomText.placeholder = "Classroom"
        }
        else
        {
            cell.classRoomText.placeholder = (userDefaults.objectForKey("classRoomText"+String(indexPath.row)) as! String)
        }
        
        if(userDefaults.objectForKey("teacherNameText"+String(indexPath.row)) == nil)
        {
            cell.teacherNameText.placeholder = "Teacher"
        }
        else
        {
            cell.teacherNameText.placeholder = (userDefaults.objectForKey("teacherNameText"+String(indexPath.row)) as! String)
        }
        
        cell.classNameText.text = ""
        cell.classRoomText.text = ""
        cell.teacherNameText.text = ""
        
        
        cell.contentView.backgroundColor = UIColor(red: CGFloat(colors[3*indexPath.row])/256, green: CGFloat(colors[3*indexPath.row+1])/256, blue: CGFloat(colors[3*indexPath.row+2])/256, alpha: 1)
        cell.classNameText.tag=indexPath.row
        cell.classRoomText.tag=indexPath.row
        cell.teacherNameText.tag=indexPath.row
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let previousIndexPath = selectedIndexPath
        if(indexPath == selectedIndexPath)
        {
            selectedIndexPath = nil
        }
        else
        {
            selectedIndexPath = indexPath
        }
        
        var indexPaths : Array<NSIndexPath> = []
        if let previous = previousIndexPath {
            indexPaths += [previous]
        }
        if let current = selectedIndexPath {
            indexPaths += [current]
        }
        if indexPaths.count > 0 {
            tableView.reloadRowsAtIndexPaths(indexPaths, withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        (cell as! CellATableViewCell).watchFrameChanges()
        //resetNameCounter()
    }
    
    override func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {

        (cell as! CellATableViewCell).ignoreFrameChanges()
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        for cell in tableView.visibleCells as! [CellATableViewCell] {
            cell.ignoreFrameChanges()
        }
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath == selectedIndexPath)
        {
            return CellATableViewCell.expandedHeight
        }
        else
        {
            return CellATableViewCell.defaultHeight
        }
    }
    
    /*@IBAction func didEndEditingName(sender: UITextField) {
        let indexPath = self.tableView!.indexPathForSelectedRow!
        let selectedCell = self.tableView!.cellForRowAtIndexPath(selectedIndexPath!) as! CellATableViewCell!//your custom cell class.
        
        userDefaults.setObject(selectedCell.classNameText.text, forKey: "classNameText"+String(indexPath.row))
        
        //print(userDefaults.objectForKey("classNameText"+String(indexPath.row)))
        
    }
    */
    
}






