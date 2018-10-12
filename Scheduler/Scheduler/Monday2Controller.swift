//
//  Monday2Controller.swift
//  Scheduler
//
//  Created by Chris W. on 8/11/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class Monday2Controller: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var classB6: UIButton!
    @IBOutlet weak var common6: UIButton!
    @IBOutlet weak var classA6: UIButton!
    @IBOutlet weak var lunch6: UIButton!
    @IBOutlet weak var classF6: UIButton!
    @IBOutlet weak var break6: UIButton!
    @IBOutlet weak var classE6: UIButton!
    
    @IBOutlet weak var labelB6: UILabel!
    @IBOutlet weak var labelA6: UILabel!
    @IBOutlet weak var labelF6: UILabel!
    @IBOutlet weak var labelE6: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    let defaultRoom = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allClasses = [classA6, common6, classB6, lunch6, classE6, break6, classF6]
        
        for button in allClasses {
            button.enabled = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        if(classnameA == nil)
        {classA6.setTitle("  "+classNames[0], forState: .Normal)}
        else
        {classA6.setTitle("  "+(classnameA as! String), forState: .Normal)}
        
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        if(classnameB == nil)
        {classB6.setTitle("  "+classNames[1], forState: .Normal)}
        else
        {classB6.setTitle("  "+(classnameB as! String), forState: .Normal)}
        
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        if(classnameE == nil)
        {classE6.setTitle("  "+classNames[4], forState: .Normal)}
        else
        {classE6.setTitle("  "+(classnameE as! String), forState: .Normal)}
        
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        if(classnameF == nil)
        {classF6.setTitle("  "+classNames[5], forState: .Normal)}
        else
        {classF6.setTitle("  "+(classnameF as! String), forState: .Normal)}
        
        let roomA = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText0")
        //print(roomA)
        if(roomA == nil)
        {labelA6.text = defaultRoom}
        else
        {labelA6.text = (roomA as! String)}
        
        let roomB = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText1")
        if(roomB == nil)
        {labelB6.text = defaultRoom}
        else
        {labelB6.text = (roomB as! String)}
        
        let roomE = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText4")
        if(roomE == nil)
        {labelE6.text = defaultRoom}
        else
        {labelE6.text = (roomE as! String)}
        
        let roomF = NSUserDefaults.standardUserDefaults().objectForKey("classRoomText5")
        if(roomF == nil)
        {labelF6.text = defaultRoom}
        else
        {labelF6.text = (roomF as! String)}
        
    }

}
