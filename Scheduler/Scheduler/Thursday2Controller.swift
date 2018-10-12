//
//  Thursday2Controller.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class Thursday2Controller: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classA9: UIButton!
    @IBOutlet weak var xblock9: UIButton!
    @IBOutlet weak var classB9: UIButton!
    @IBOutlet weak var lunch9: UIButton!
    @IBOutlet weak var classE9: UIButton!
    @IBOutlet weak var break9: UIButton!
    @IBOutlet weak var classF9: UIButton!
    
    @IBOutlet weak var labelA9: UILabel!
    @IBOutlet weak var labelB9: UILabel!
    @IBOutlet weak var labelE9: UILabel!
    @IBOutlet weak var labelF9: UILabel!
    

    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [classA9, xblock9, classB9, lunch9, classE9, break9, classF9]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA9.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA9.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB9.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB9.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE9.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE9.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF9.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF9.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA9.text = defaultRoom}
        else
        {labelA9.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB9.text = defaultRoom}
        else
        {labelB9.text = (roomB as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE9.text = defaultRoom}
        else
        {labelE9.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF9.text = defaultRoom}
        else
        {labelF9.text = (roomF as! String)}
        
    }
    
}
