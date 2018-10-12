//
//  TodayController.swift
//  Scheduler
//
//  Created by Chris W. on 6/26/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class TuesdayController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var classB2: UIButton!
    @IBOutlet weak var classC2: UIButton!
    @IBOutlet weak var break2: UIButton!
    @IBOutlet weak var classA2: UIButton!
    @IBOutlet weak var classD2: UIButton!
    @IBOutlet weak var lunch2: UIButton!
    @IBOutlet weak var classF2: UIButton!
    @IBOutlet weak var classG2: UIButton!
    @IBOutlet weak var classE2: UIButton!
    
    
    @IBOutlet weak var labelB2: UILabel!
    @IBOutlet weak var labelC2: UILabel!
    @IBOutlet weak var labelA2: UILabel!
    @IBOutlet weak var labelD2: UILabel!
    @IBOutlet weak var labelF2: UILabel!
    @IBOutlet weak var labelG2: UILabel!
    @IBOutlet weak var labelE2: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let allClasses = [classB2, classC2, break2, classA2, classD2, lunch2, classF2, classG2, classE2]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA2.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA2.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB2.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB2.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        if(classnameC == nil)
        {classC2.setTitle("  "+classNames[2], forState: .Normal)}
        else
        {classC2.setTitle("  "+(classnameC as! String), forState: .Normal)}
    
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        if(classnameD == nil)
        {classD2.setTitle("  "+classNames[3], forState: .Normal)}
        else
        {classD2.setTitle("  "+(classnameD as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE2.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE2.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF2.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF2.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        if(classnameG == nil)
        {classG2.setTitle("  "+classNames[6], forState: .Normal)}
        else
        {classG2.setTitle("  "+(classnameG as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA2.text = defaultRoom}
        else
        {labelA2.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB2.text = defaultRoom}
        else
        {labelB2.text = (roomB as! String)}
        
        let roomC = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText2")
        if(roomC == nil)
        {labelC2.text = defaultRoom}
        else
        {labelC2.text = (roomC as! String)}
        
        let roomD = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText3")
        if(roomD == nil)
        {labelD2.text = defaultRoom}
        else
        {labelD2.text = (roomD as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE2.text = defaultRoom}
        else
        {labelE2.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF2.text = defaultRoom}
        else
        {labelF2.text = (roomF as! String)}
        
        let roomG = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText6")
        if(roomG == nil)
        {labelG2.text = defaultRoom}
        else
        {labelG2.text = (roomG as! String)}
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
