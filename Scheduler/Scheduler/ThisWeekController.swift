//
//  ThisWeekController.swift
//  Scheduler
//
//  Created by Chris W. on 6/26/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class ThisWeekController: UIViewController {

    //MARK: Properties
    
    
    @IBOutlet weak var classA1: UIButton!
    @IBOutlet weak var classA2: UIButton!
    @IBOutlet weak var classA3: UIButton!
    @IBOutlet weak var classA5: UIButton!

    @IBOutlet weak var classB1: UIButton!
    @IBOutlet weak var classB2: UIButton!
    @IBOutlet weak var classB3: UIButton!
    @IBOutlet weak var classB5: UIButton!
    
    @IBOutlet weak var classC1: UIButton!
    @IBOutlet weak var classC2: UIButton!
    @IBOutlet weak var classC4: UIButton!
    @IBOutlet weak var classC5: UIButton!
    
    @IBOutlet weak var classD1: UIButton!
    @IBOutlet weak var classD2: UIButton!
    @IBOutlet weak var classD4: UIButton!
    @IBOutlet weak var classD5: UIButton!
    
    @IBOutlet weak var classE1: UIButton!
    @IBOutlet weak var classE2: UIButton!
    @IBOutlet weak var classE3: UIButton!
    @IBOutlet weak var classE5: UIButton!
    
    @IBOutlet weak var classF1: UIButton!
    @IBOutlet weak var classF2: UIButton!
    @IBOutlet weak var classF3: UIButton!
    @IBOutlet weak var classF5: UIButton!
    
    @IBOutlet weak var classG1: UIButton!
    @IBOutlet weak var classG2: UIButton!
    @IBOutlet weak var classG4: UIButton!
    @IBOutlet weak var classG5: UIButton!
    
    @IBOutlet weak var break1: UIButton!
    @IBOutlet weak var break2: UIButton!
    @IBOutlet weak var break3: UIButton!
    @IBOutlet weak var break4: UIButton!
    @IBOutlet weak var break5: UIButton!
    
    @IBOutlet weak var lunch1: UIButton!
    @IBOutlet weak var lunch2: UIButton!
    @IBOutlet weak var lunch3: UIButton!
    @IBOutlet weak var lunch4: UIButton!
    @IBOutlet weak var lunch5: UIButton!
    
    @IBOutlet weak var commonClassroom3: UIButton!
    @IBOutlet weak var facultyCollab4: UIButton!
    @IBOutlet weak var compass4: UIButton!
    @IBOutlet weak var tutorial4: UIButton!
    
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classroom: UILabel!
    @IBOutlet weak var classTime: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let classA = [classA1, classA2, classA3, classA5]
        let classB = [classB1, classB2, classB3, classB5]
        let classC = [classC1, classC2, classC4, classC5]
        let classD = [classD1, classD2, classD4, classD5]
        let classE = [classE1, classE2, classE3, classE5]
        let classF = [classF1, classF2, classF3, classF5]
        let classG = [classG1, classG2, classG4, classG5]
        var allClasses = classA
        allClasses.appendContentsOf(classB)                 //improve compiling time
        allClasses.appendContentsOf(classC)
        allClasses.appendContentsOf(classD)
        allClasses.appendContentsOf(classE)
        allClasses.appendContentsOf(classF)
        allClasses.appendContentsOf(classG)
        allClasses.appendContentsOf([break1, break2, break5, break3, break4, lunch1, lunch2, lunch3, lunch4, lunch5, commonClassroom3, facultyCollab4, compass4, tutorial4])
        
        for button in allClasses
        {
            button.titleLabel?.textAlignment = NSTextAlignment.Center
        }
        
        className.text = ""
        classroom.text = ""
        classTime.text = ""
        teacherName.text = ""
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ThisWeekController.updateView), name: UIApplicationDidBecomeActiveNotification, object: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        updateView()
    }
    
    func updateView()
    {
        let classA = [classA1, classA2, classA3, classA5]
        let classB = [classB1, classB2, classB3, classB5]
        let classC = [classC1, classC2, classC4, classC5]
        let classD = [classD1, classD2, classD4, classD5]
        let classE = [classE1, classE2, classE3, classE5]
        let classF = [classF1, classF2, classF3, classF5]
        let classG = [classG1, classG2, classG4, classG5]
        var allClasses = classA
        allClasses.appendContentsOf(classB)                 //improve compiling time
        allClasses.appendContentsOf(classC)
        allClasses.appendContentsOf(classD)
        allClasses.appendContentsOf(classE)
        allClasses.appendContentsOf(classF)
        allClasses.appendContentsOf(classG)
        allClasses.appendContentsOf([break1, break2, break5, break3, break4, lunch1, lunch2, lunch3, lunch4, lunch5, commonClassroom3, facultyCollab4, compass4, tutorial4])
        
        let mondayClasses = [classA1, classB1, break1, classC1, classD1, lunch1, classE1, classF1, classG1]
        let tuesdayClasses = [classB2, classC2, break2, classA2, classD2, lunch2, classF2, classG2, classE2]
        let wednesdayClasses = [classA3, commonClassroom3, classB3, lunch3, classE3, break3, classF3]
        let thursdayClasses = [facultyCollab4, classC4, break4, classD4, lunch4, compass4, classG4, tutorial4]
        let fridayClasses = [classC5, classA5, break5, classB5, classD5, lunch5, classG5, classE5, classF5]
        
        let classnameA = NSUserDefaults.standardUserDefaults().objectForKey("classNameText0")
        for button in classA
        {
            if(classnameA == nil)
            {button.setTitle(classNames[0], forState: .Normal)}
            else
            {button.setTitle((classnameA as! String), forState: .Normal)}
        }
        let classnameB = NSUserDefaults.standardUserDefaults().objectForKey("classNameText1")
        for button in classB
        {
            if(classnameB == nil)
            {button.setTitle(classNames[1], forState: .Normal)}
            else
            {button.setTitle((classnameB as! String), forState: .Normal)}
        }
        let classnameC = NSUserDefaults.standardUserDefaults().objectForKey("classNameText2")
        for button in classC
        {
            if(classnameC == nil)
            {button.setTitle(classNames[2], forState: .Normal)}
            else
            {button.setTitle((classnameC as! String), forState: .Normal)}
        }
        let classnameD = NSUserDefaults.standardUserDefaults().objectForKey("classNameText3")
        for button in classD
        {
            if(classnameD == nil)
            {button.setTitle(classNames[3], forState: .Normal)}
            else
            {button.setTitle((classnameD as! String), forState: .Normal)}
        }
        let classnameE = NSUserDefaults.standardUserDefaults().objectForKey("classNameText4")
        for button in classE
        {
            if(classnameE == nil)
            {button.setTitle(classNames[4], forState: .Normal)}
            else
            {button.setTitle((classnameE as! String), forState: .Normal)}
        }
        let classnameF = NSUserDefaults.standardUserDefaults().objectForKey("classNameText5")
        for button in classF
        {
            if(classnameF == nil)
            {button.setTitle(classNames[5], forState: .Normal)}
            else
            {button.setTitle((classnameF as! String), forState: .Normal)}
        }
        let classnameG = NSUserDefaults.standardUserDefaults().objectForKey("classNameText6")
        for button in classG
        {
            if(classnameG == nil)
            {button.setTitle(classNames[6], forState: .Normal)}
            else
            {button.setTitle((classnameG as! String), forState: .Normal)}
        }
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
        let year =  components.year
        let month = components.month
        let day = components.day
        let dateString = String(month) + "-" + String(day) + "-" + String(year)
        let dayOfWeek = getDayOfWeek(dateString)
        
        
        for button in allClasses
        {
            button.alpha = 0.45
        }
        //print(checkWeek())
        if(checkWeek() == 1)
        {
            switch dayOfWeek
            {
            case 2: for button in mondayClasses {button.alpha = 0.85}
                
            case 3: for button in tuesdayClasses {button.alpha = 0.85}
                
            case 4: for button in wednesdayClasses {button.alpha = 0.85}
                
            case 5: for button in thursdayClasses {button.alpha = 0.85}
                
            case 6: for button in fridayClasses {button.alpha = 0.85}
                
            default: break;
            }
        }
    }
    
    func getDayOfWeek(today:String)->Int {
        
        let formatter  = NSDateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        if let todayDate = formatter.dateFromString(today) {
            let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
            let myComponents = myCalendar.components(.Weekday, fromDate: todayDate)
            let weekDay = myComponents.weekday
            return weekDay
        }
        return -1
    }
    
    func checkWeek()->Int
    {
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month], fromDate: date)
        let month = components.month
        let day = components.day
        var dateString = ""
        if(Int(day) < 10)
        {dateString = String(month) + "0" + String(day)}
        else
        {dateString = String(month) + String(day)}
        
        let dateInt = Int(dateString)!
        
        //print(dateInt)
        if(dateInt>=822&&dateInt<=826 || dateInt>=903&&dateInt<=909 || dateInt>=917&&dateInt<=23 || dateInt>=1001&&dateInt<=1007 || dateInt>=1015&&dateInt<=21 || dateInt>=1029&&dateInt<=1104 || dateInt>=1112&&dateInt<=1118 || dateInt>=1124&&dateInt<=1202 || dateInt>=114&&dateInt<=120 || dateInt>=128&&dateInt<=203 || dateInt>=211&&dateInt<=217 || dateInt>=225&&dateInt<=310 || dateInt>=317&&dateInt<=324 || dateInt>=415&&dateInt<=421 || dateInt>=429&&dateInt<=505 || dateInt>=513&&dateInt<=519 || dateInt>=525&&dateInt<=822)
        {
            return 1
        }
        else if (dateInt==1121 || dateInt==1212 || dateInt==1213 || dateInt==221 || dateInt==222 || dateInt==315 || dateInt==316)
        {   return 0}
        else
        {   return 2}
    }


    //MARK: Actions

    @IBAction func buttonA1(sender: UIButton) {
        className.text = classA1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText0"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText0"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:05" + " to " + "8:50"
    }
    @IBAction func buttonA2(sender: UIButton) {
        className.text = classA1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText0"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText0"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "10:20" + " to " + "11:05"
    }
    @IBAction func buttonA3(sender: UIButton) {
        className.text = classA1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText0"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText0"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:05" + " to " + "9:20"
    }
    @IBAction func buttonA5(sender: UIButton) {
        className.text = classA1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText0"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText0"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:55" + " to " + "9:40"
    }
    
    @IBAction func buttonB1(sender: UIButton) {
        className.text = classB1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText1"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText1"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:55" + " to " + "9:40"
    }
    @IBAction func buttonB2(sender: UIButton) {
        className.text = classB1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText1"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText1"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:05" + " to " + "8:50"
    }
    @IBAction func buttonB3(sender: UIButton) {
        className.text = classB1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText1"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText1"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "10:20" + " to " + "11:35"
    }
    @IBAction func buttonB5(sender: UIButton) {
        className.text = classB1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText1"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText1"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "10:20" + " to " + "11:05"
    }
    
    @IBAction func buttonC1(sender: UIButton) {
        className.text = classC1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText2"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText2"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "10:20" + " to " + "11:05"
    }
    @IBAction func buttonC2(sender: UIButton) {
        className.text = classC1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText2"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText2"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:55" + " to " + "9:40"
    }
    @IBAction func buttonC4(sender: UIButton) {
        className.text = classC1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText2"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText2"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "9:10" + " to " + "10:25"
    }
    @IBAction func buttonC5(sender: UIButton) {
        className.text = classC1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText2"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText2"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "8:05" + " to " + "8:50"
    }
    
    @IBAction func buttonD1(sender: UIButton) {
        className.text = classD1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText3"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText3"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "11:10" + " to " + "11:55"
    }
    @IBAction func buttonD2(sender: UIButton) {
        className.text = classD1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText3"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText3"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "11:10" + " to " + "11:55"
    }
    @IBAction func buttonD4(sender: UIButton) {
        className.text = classD1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText3"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText3"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "10:40" + " to " + "11:55"
    }
    @IBAction func buttonD5(sender: UIButton) {
        className.text = classD1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText3"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText3"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "11:10" + " to " + "11:55"
    }

    @IBAction func buttonE1(sender: UIButton) {
        className.text = classE1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText4"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText4"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "12:50" + " to " + "1:35"
    }
    @IBAction func buttonE2(sender: UIButton) {
        className.text = classE1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText4"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText4"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "2:30" + " to " + "3:15"
    }
    @IBAction func buttonE3(sender: UIButton) {
        className.text = classE1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText4"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText4"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "12:30" + " to " + "1:45"
    }
    @IBAction func buttonE5(sender: UIButton) {
        className.text = classE1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText4"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText4"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "1:40" + " to " + "2:25"
    }
    
    @IBAction func buttonF1(sender: UIButton) {
        className.text = classF1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText5"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText5"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "1:40" + " to " + "2:25"
    }
    @IBAction func buttonF2(sender: UIButton) {
        className.text = classF1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText5"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText5"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "12:50" + " to " + "1:35"
    }
    @IBAction func buttonF3(sender: UIButton) {
        className.text = classF1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText5"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText5"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "2:00" + " to " + "3:15"
    }
    @IBAction func buttonF5(sender: UIButton) {
        className.text = classF1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText5"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText5"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "2:30" + " to " + "3:15"
    }

    @IBAction func buttonG1(sender: UIButton) {
        className.text = classG1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText6"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText6"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "2:30" + " to " + "3:15"
    }
    @IBAction func buttonG2(sender: UIButton) {
        className.text = classG1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText6"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText6"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "1:40" + " to " + "2:25"
    }
    @IBAction func buttonG4(sender: UIButton) {
        className.text = classG1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText6"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText6"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "1:40" + " to " + "2:55"
    }
    @IBAction func buttonG5(sender: UIButton) {
        className.text = classG1.titleLabel?.text
        let room = (userDefaults.objectForKey("classRoomText6"))
        if(room == nil)
        {classroom.text = ""}
        else
        {classroom.text = (room as! String)}
        let teacher = (userDefaults.objectForKey("teacherNameText6"))
        if(teacher == nil)
        {teacherName.text = ""}
        else
        {teacherName.text = (teacher as! String)}
        classTime.text = "12:50" + " to " + "1:35"
    }
    
    @IBAction func break1(sender: UIButton) {
        className.text = "Break"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:40" + " to " + "10:15"
    }
    @IBAction func break2(sender: UIButton) {
        className.text = "Assembly"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:45" + " to " + "10:15"
    }
    @IBAction func break3(sender: UIButton) {
        className.text = "Breaklet"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "1:45" + " to " + "2:00"
    }
    @IBAction func break4(sender: UIButton) {
        className.text = "Breaklet"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "10:25" + " to " + "10:40"
    }
    @IBAction func break5(sender: UIButton) {
        className.text = "Assembly"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:45" + " to " + "10:15"
    }
    
    @IBAction func lunch1(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    @IBAction func lunch2(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    @IBAction func lunch3(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "11:40" + " to " + "12:25"
    }
    @IBAction func lunch4(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    @IBAction func lunch5(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    
    @IBAction func common3(sender: UIButton) {
        className.text = "Common Classroom"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:25" + " to " + "10:15"
    }
    @IBAction func collab4(sender: UIButton) {
        className.text = "Faculty Collaboration"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "8:05" + " to " + "9:05"
    }
    @IBAction func compass4(sender: UIButton) {
        className.text = "Compass"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:50" + " to " + "1:35"
    }
    @IBAction func tutorial4(sender: UIButton) {
        className.text = "Tutorial"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "2:55" + " to " + "3:15"
    }
    

}
