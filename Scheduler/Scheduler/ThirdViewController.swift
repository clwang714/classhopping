//
//  ThirdViewController.swift
//  Scheduler
//
//  Created by Chris W. on 6/26/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var enableAlerts: UISwitch!

    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchD: UISwitch!
    @IBOutlet weak var switchE: UISwitch!
    @IBOutlet weak var switchF: UISwitch!
    @IBOutlet weak var switchG: UISwitch!
    
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelD: UILabel!
    @IBOutlet weak var labelE: UILabel!
    @IBOutlet weak var labelF: UILabel!
    @IBOutlet weak var labelG: UILabel!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enableAlerts.on = false
        
        labelA.alpha = 0.6
        labelB.alpha = 0.6
        labelC.alpha = 0.6
        labelD.alpha = 0.6
        labelE.alpha = 0.6
        labelF.alpha = 0.6
        labelG.alpha = 0.6

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        labelA.text = "     "+(userDefaults.objectForKey("classNameText0") as! String)
        labelB.text = "     "+(userDefaults.objectForKey("classNameText1") as! String)
        labelC.text = "     "+(userDefaults.objectForKey("classNameText2") as! String)
        labelD.text = "     "+(userDefaults.objectForKey("classNameText3") as! String)
        labelE.text = "     "+(userDefaults.objectForKey("classNameText4") as! String)
        labelF.text = "     "+(userDefaults.objectForKey("classNameText5") as! String)
        labelG.text = "     "+(userDefaults.objectForKey("classNameText6") as! String)

    }
    
    //MARK: Actions
    
    @IBAction func switchChanged(sender: UISwitch) {
        if (enableAlerts.on)
        {
            let notificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Sound], categories: nil)
            UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
            
            labelA.alpha = 1.0
            labelB.alpha = 1.0
            labelC.alpha = 1.0
            labelD.alpha = 1.0
            labelE.alpha = 1.0
            labelF.alpha = 1.0
            labelG.alpha = 1.0
        }
        else
        {
            labelA.alpha = 0.6
            labelB.alpha = 0.6
            labelC.alpha = 0.6
            labelD.alpha = 0.6
            labelE.alpha = 0.6
            labelF.alpha = 0.6
            labelG.alpha = 0.6
        }
    }
}
