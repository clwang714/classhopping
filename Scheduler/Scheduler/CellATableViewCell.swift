//
//  CellATableViewCell.swift
//  Scheduler
//
//  Created by Chris W. on 6/26/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class CellATableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var className: UILabel!
    
    @IBOutlet weak var classNameText: UITextField!
    @IBOutlet weak var classRoomText: UITextField!
    @IBOutlet weak var teacherNameText: UITextField!
    
    @IBOutlet weak var rightChevron: UIImageView!
    @IBOutlet weak var downChevron: UIImageView!
    
    class var expandedHeight: CGFloat {get{return 170}}
    class var defaultHeight:  CGFloat {get{return 40}}
    var isObserving = false;
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func checkHeight(){
        if(frame.size.height < CellATableViewCell.expandedHeight)
        {
            classNameText.hidden    = true
            classRoomText.hidden    = true
            teacherNameText.hidden  = true
            rightChevron.hidden     = false
            downChevron.hidden      = true
        }
        else
        {
            classNameText.hidden    = false
            classRoomText.hidden    = false
            teacherNameText.hidden  = false
            rightChevron.hidden     = true
            downChevron.hidden      = false
        }
        //SecondViewController.resetNameCounter()
    }
    
    func watchFrameChanges(){
        if(!isObserving)
        {
            addObserver(self, forKeyPath: "frame", options: [NSKeyValueObservingOptions.New, NSKeyValueObservingOptions.Initial], context: nil)
            isObserving = true
        }
        //checkHeight()
    }
    
    func ignoreFrameChanges(){
        if (isObserving)
        {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false;
        }
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if (keyPath == "frame")
        {
            checkHeight()
        }
        
    }
    
    
    //MARK: Actions
    @IBAction func didEndEditingClassName(sender: UITextField) {
        let directories = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        if let documents = directories.first {
            //print(documents)
        }
        let row = sender.tag
        if(classNameText.text != "")
        {
            userDefaults.setObject(classNameText.text, forKey: "classNameText"+String(row))
            let classname = (userDefaults.objectForKey("classNameText"+String(row))) as! String
            //print(row)
            className.text = (classname)
            classNameText.placeholder = (classname)
            //classNameText.text = ""
        }
    }
    
    @IBAction func didEndEditingClassroom(sender: UITextField) {
        let directories = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        if let documents = directories.first {
            //print(documents)
        }
        let row = sender.tag
        if(classRoomText.text != "")
        {
            userDefaults.setObject(classRoomText.text, forKey: "classRoomText"+String(row))
            let classroom = (userDefaults.objectForKey("classRoomText"+String(row))) as! String
            //print(row)
            classRoomText.placeholder = (classroom)
            //classRoomText.text = ""
        }
    }
        
    @IBAction func didEndEditingTeacher(sender: UITextField) {
        let directories = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        if let documents = directories.first {
            //print(documents)
        }
        let row = sender.tag
        if(teacherNameText.text != "")
        {
            userDefaults.setObject(teacherNameText.text, forKey: "teacherNameText"+String(row))
            let teachername = (userDefaults.objectForKey("teacherNameText"+String(row))) as! String
            //print(row)
            teacherNameText.placeholder = (teachername)
            //teacherNameText.text = ""
        }
    }


}
