//
//  ThursdayController.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class ThursdayController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var collab4: UIButton!
    @IBOutlet weak var classC4: UIButton!
    @IBOutlet weak var break4: UIButton!
    @IBOutlet weak var classD4: UIButton!
    @IBOutlet weak var lunch4: UIButton!
    @IBOutlet weak var compass4: UIButton!
    @IBOutlet weak var classG4: UIButton!
    @IBOutlet weak var tutorial4: UIButton!
    
    @IBOutlet weak var labelC4: UILabel!
    @IBOutlet weak var labelD4: UILabel!
    @IBOutlet weak var labelG4: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [collab4, classC4, break4, classD4, lunch4, compass4, classG4, tutorial4]
        
        for button in allClasses {
            button.enabled = false
        }
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC4.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC4.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD4.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD4.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG4.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG4.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC4.text = defaultRoom}
        else
        {labelC4.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD4.text = defaultRoom}
        else
        {labelD4.text = (roomD as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG4.text = defaultRoom}
        else
        {labelG4.text = (roomG as! String)}

    }

}
