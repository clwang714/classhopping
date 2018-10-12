//
//  Tuesday2Controller.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class Tuesday2Controller: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classC7: UIButton!
    @IBOutlet weak var break71: UIButton!
    @IBOutlet weak var break72: UIButton!
    @IBOutlet weak var classD7: UIButton!
    @IBOutlet weak var lunch7: UIButton!
    @IBOutlet weak var advising7: UIButton!
    @IBOutlet weak var classG7: UIButton!
    @IBOutlet weak var collab7: UIButton!
    
    @IBOutlet weak var labelC7: UILabel!
    @IBOutlet weak var labelD7: UILabel!
    @IBOutlet weak var labelG7: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [collab7, classC7, break71, break72, classD7, lunch7, advising7, classG7]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC7.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC7.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD7.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD7.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG7.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG7.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC7.text = defaultRoom}
        else
        {labelC7.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD7.text = defaultRoom}
        else
        {labelD7.text = (roomD as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG7.text = defaultRoom}
        else
        {labelG7.text = (roomG as! String)}
        
    }

}
