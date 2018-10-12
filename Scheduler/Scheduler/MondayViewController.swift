//
//  MondayViewController.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class MondayViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var classA1: UIButton!
    @IBOutlet weak var classB1: UIButton!
    @IBOutlet weak var break1: UIButton!
    @IBOutlet weak var classC1: UIButton!
    @IBOutlet weak var classD1: UIButton!
    @IBOutlet weak var lunch1: UIButton!
    @IBOutlet weak var classE1: UIButton!
    @IBOutlet weak var classF1: UIButton!
    @IBOutlet weak var classG1: UIButton!
    
    @IBOutlet weak var labelA1: UILabel!
    @IBOutlet weak var labelB1: UILabel!
    @IBOutlet weak var labelC1: UILabel!
    @IBOutlet weak var labelD1: UILabel!
    @IBOutlet weak var labelE1: UILabel!
    @IBOutlet weak var labelF1: UILabel!
    @IBOutlet weak var labelG1: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [classB1, classC1, break1, classA1, classD1, lunch1, classF1, classG1, classE1]
        
        for button in allClasses {
            button.enabled = false;
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA1.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA1.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB1.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB1.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC1.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC1.setTitle("  "+(classnameC as! String), forState: .Normal)}
        
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD1.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD1.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE1.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE1.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF1.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF1.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG1.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG1.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA1.text = defaultRoom}
        else
        {labelA1.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB1.text = defaultRoom}
        else
        {labelB1.text = (roomB as! String)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC1.text = defaultRoom}
        else
        {labelC1.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD1.text = defaultRoom}
        else
        {labelD1.text = (roomD as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE1.text = defaultRoom}
        else
        {labelE1.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF1.text = defaultRoom}
        else
        {labelF1.text = (roomF as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG1.text = defaultRoom}
        else
        {labelG1.text = (roomG as! String)}
    }

   

}
