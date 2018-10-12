//
//  Friday2Controller.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class Friday2Controller: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classC10: UIButton!
    @IBOutlet weak var break10: UIButton!
    @IBOutlet weak var community10: UIButton!
    @IBOutlet weak var classD10: UIButton!
    @IBOutlet weak var lunch10: UIButton!
    @IBOutlet weak var compass10: UIButton!
    @IBOutlet weak var classG10: UIButton!
    @IBOutlet weak var tutorial10: UIButton!
    
    @IBOutlet weak var labelC10: UILabel!
    @IBOutlet weak var labelD10: UILabel!
    @IBOutlet weak var labelG10: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [community10, classC10, break10, classD10, lunch10, compass10, classG10, tutorial10]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC10.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC10.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD10.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD10.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG10.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG10.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC10.text = defaultRoom}
        else
        {labelC10.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD10.text = defaultRoom}
        else
        {labelD10.text = (roomD as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG10.text = defaultRoom}
        else
        {labelG10.text = (roomG as! String)}
        
    }
    
}

