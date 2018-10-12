//
//  Wednesday2Controller.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class Wednesday2Controller: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classA8: UIButton!
    @IBOutlet weak var classB8: UIButton!
    @IBOutlet weak var break8: UIButton!
    @IBOutlet weak var classC8: UIButton!
    @IBOutlet weak var classD8: UIButton!
    @IBOutlet weak var lunch8: UIButton!
    @IBOutlet weak var classE8: UIButton!
    @IBOutlet weak var classF8: UIButton!
    @IBOutlet weak var classG8: UIButton!
    
    @IBOutlet weak var labelA8: UILabel!
    @IBOutlet weak var labelB8: UILabel!
    @IBOutlet weak var labelC8: UILabel!
    @IBOutlet weak var labelD8: UILabel!
    @IBOutlet weak var labelE8: UILabel!
    @IBOutlet weak var labelF8: UILabel!
    @IBOutlet weak var labelG8: UILabel!
    

    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [classB8, classC8, break8, classA8, classD8, lunch8, classF8, classG8, classE8]
        
        for button in allClasses {
            button.enabled = false;
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA8.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA8.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB8.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB8.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC8.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC8.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD8.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD8.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE8.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE8.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF8.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF8.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG8.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG8.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA8.text = defaultRoom}
        else
        {labelA8.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB8.text = defaultRoom}
        else
        {labelB8.text = (roomB as! String)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC8.text = defaultRoom}
        else
        {labelC8.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD8.text = defaultRoom}
        else
        {labelD8.text = (roomD as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE8.text = defaultRoom}
        else
        {labelE8.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF8.text = defaultRoom}
        else
        {labelF8.text = (roomF as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG8.text = defaultRoom}
        else
        {labelG8.text = (roomG as! String)}
    }
}
