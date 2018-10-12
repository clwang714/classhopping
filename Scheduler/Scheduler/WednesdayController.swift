//
//  WednesdayController.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class WednesdayController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classA3: UIButton!
    @IBOutlet weak var common3: UIButton!
    @IBOutlet weak var classB3: UIButton!
    @IBOutlet weak var lunch3: UIButton!
    @IBOutlet weak var classE3: UIButton!
    @IBOutlet weak var break3: UIButton!
    @IBOutlet weak var classF3: UIButton!
    
    @IBOutlet weak var labelA3: UILabel!
    @IBOutlet weak var labelB3: UILabel!
    @IBOutlet weak var labelE3: UILabel!
    @IBOutlet weak var labelF3: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let allClasses = [classA3, common3, classB3, lunch3, classE3, break3, classF3]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA3.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA3.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB3.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB3.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE3.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE3.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF3.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF3.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA3.text = defaultRoom}
        else
        {labelA3.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB3.text = defaultRoom}
        else
        {labelB3.text = (roomB as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE3.text = defaultRoom}
        else
        {labelE3.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF3.text = defaultRoom}
        else
        {labelF3.text = (roomF as! String)}

    }

}
