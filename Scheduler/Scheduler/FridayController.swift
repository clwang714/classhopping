//
//  FridayController.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class FridayController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classC5: UIButton!
    @IBOutlet weak var classA5: UIButton!
    @IBOutlet weak var break5: UIButton!
    @IBOutlet weak var classB5: UIButton!
    @IBOutlet weak var classD5: UIButton!
    @IBOutlet weak var lunch5: UIButton!
    @IBOutlet weak var classG5: UIButton!
    @IBOutlet weak var classE5: UIButton!
    @IBOutlet weak var classF5: UIButton!
    
    @IBOutlet weak var labelC5: UILabel!
    @IBOutlet weak var labelA5: UILabel!
    @IBOutlet weak var labelB5: UILabel!
    @IBOutlet weak var labelD5: UILabel!
    @IBOutlet weak var labelG5: UILabel!
    @IBOutlet weak var labelE5: UILabel!
    @IBOutlet weak var labelF5: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let allClasses = [classC5, classA5, break5, classB5, classD5, lunch5, classG5, classE5, classF5]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA5.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA5.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB5.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB5.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC5.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC5.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD5.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD5.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE5.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE5.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF5.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF5.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG5.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG5.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA5.text = defaultRoom}
        else
        {labelA5.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB5.text = defaultRoom}
        else
        {labelB5.text = (roomB as! String)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC5.text = defaultRoom}
        else
        {labelC5.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD5.text = defaultRoom}
        else
        {labelD5.text = (roomD as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE5.text = defaultRoom}
        else
        {labelE5.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF5.text = defaultRoom}
        else
        {labelF5.text = (roomF as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG5.text = defaultRoom}
        else
        {labelG5.text = (roomG as! String)}
    }

}
