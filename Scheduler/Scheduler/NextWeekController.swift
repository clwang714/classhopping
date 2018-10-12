//
//  NextWeekController.swift
//  Scheduler
//
//  Created by Chris W. on 8/10/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class NextWeekController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var classA6: UIButton!
    @IBOutlet weak var classA8: UIButton!
    @IBOutlet weak var classA9: UIButton!
    
    @IBOutlet weak var classB6: UIButton!
    @IBOutlet weak var classB8: UIButton!
    @IBOutlet weak var classB9: UIButton!

    @IBOutlet weak var classC7: UIButton!
    @IBOutlet weak var classC8: UIButton!
    @IBOutlet weak var classC10: UIButton!

    @IBOutlet weak var classD7: UIButton!
    @IBOutlet weak var classD8: UIButton!
    @IBOutlet weak var classD10: UIButton!
    
    @IBOutlet weak var classE6: UIButton!
    @IBOutlet weak var classE8: UIButton!
    @IBOutlet weak var classE9: UIButton!

    @IBOutlet weak var classF6: UIButton!
    @IBOutlet weak var classF8: UIButton!
    @IBOutlet weak var classF9: UIButton!

    @IBOutlet weak var classG7: UIButton!
    @IBOutlet weak var classG8: UIButton!
    @IBOutlet weak var classG10: UIButton!

    @IBOutlet weak var break6: UIButton!
    @IBOutlet weak var break71: UIButton!
    @IBOutlet weak var break72: UIButton!
    @IBOutlet weak var break8: UIButton!
    @IBOutlet weak var break9: UIButton!
    @IBOutlet weak var break10: UIButton!
    
    @IBOutlet weak var lunch6: UIButton!
    @IBOutlet weak var lunch7: UIButton!
    @IBOutlet weak var lunch8: UIButton!
    @IBOutlet weak var lunch9: UIButton!
    @IBOutlet weak var lunch10: UIButton!
    
    @IBOutlet weak var commonClassroom6: UIButton!
    @IBOutlet weak var advising7: UIButton!
    @IBOutlet weak var facultyCollab7: UIButton!
    @IBOutlet weak var xBlock9: UIButton!
    @IBOutlet weak var community10: UIButton!
    @IBOutlet weak var compass10: UIButton!
    @IBOutlet weak var tutorial10: UIButton!

    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classroom: UILabel!
    @IBOutlet weak var classTime: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    
    let classNames = ["Class A","Class B","Class C","Class D","Class E","Class F","Class G"]
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let classA = [classA6, classA8, classA9]
        let classB = [classB6, classB8, classB9]
        let classC = [classC7, classC8, classC10]
        let classD = [classD7, classD8, classD10]
        let classE = [classE6, classE8, classE9]
        let classF = [classF6, classF8, classF9]
        let classG = [classG7, classG8, classG10]
        var allClasses = classA
        allClasses.appendContentsOf(classB)                 //improve compiling time
        allClasses.appendContentsOf(classC)
        allClasses.appendContentsOf(classD)
        allClasses.appendContentsOf(classE)
        allClasses.appendContentsOf(classF)
        allClasses.appendContentsOf(classG)
        allClasses.appendContentsOf([break6, break71, break72, break8, break9, break10, lunch6, lunch7, lunch8, lunch9, lunch10, commonClassroom6, advising7, facultyCollab7, xBlock9, community10, compass10, tutorial10])
        
        for button in allClasses
        {
            button.titleLabel?.textAlignment = NSTextAlignment.Center
        }
        
        className.text = ""
        classroom.text = ""
        classTime.text = ""
        teacherName.text = ""
        
         NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(NextWeekController.updateView), name: UIApplicationDidBecomeActiveNotification, object: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        updateView()
    }
    
    func updateView()
    {
        let classA = [classA6, classA8, classA9]
        let classB = [classB6, classB8, classB9]
        let classC = [classC7, classC8, classC10]
        let classD = [classD7, classD8, classD10]
        let classE = [classE6, classE8, classE9]
        let classF = [classF6, classF8, classF9]
        let classG = [classG7, classG8, classG10]
        var allClasses = classA
        allClasses.appendContentsOf(classB)                 //improve compiling time
        allClasses.appendContentsOf(classC)
        allClasses.appendContentsOf(classD)
        allClasses.appendContentsOf(classE)
        allClasses.appendContentsOf(classF)
        allClasses.appendContentsOf(classG)
        allClasses.appendContentsOf([break6, break71, break72, break8, break9, break10, lunch6, lunch7, lunch8, lunch9, lunch10, commonClassroom6, advising7, facultyCollab7, xBlock9, community10, compass10, tutorial10])
        
        let mondayClasses = [classB6, commonClassroom6, classA6, lunch6, classF6, break6, classE6]
        let tuesdayClasses = [classC7, break71, break72, classD7, lunch7, advising7, classG7, facultyCollab7]
        let wednesdayClasses = [classA8, classB8, break8, classC8, classD8, lunch8, classE8, classF8, classG8]
        let thursdayClasses = [classA9, xBlock9, classB9, lunch9, classE9, break9, classF9]
        let fridayClasses = [classC10, break10, community10, classD10, lunch10, compass10, classG10, tutorial10]
        
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
        if(checkWeek() == 2)
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
    
    @IBAction func buttonA6(sender: UIButton) {
        className.text = classA6.titleLabel?.text
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
        classTime.text = "10:20" + " to " + "11:35"
    }
    @IBAction func buttonA8(sender: UIButton) {
        className.text = classA6.titleLabel?.text
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
    @IBAction func buttonA9(sender: UIButton) {
        className.text = classA6.titleLabel?.text
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
    
    @IBAction func buttonB6(sender: UIButton) {
        className.text = classB6.titleLabel?.text
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
        classTime.text = "8:05" + " to " + "9:20"
    }
    @IBAction func buttonB8(sender: UIButton) {
        className.text = classB6.titleLabel?.text
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
    @IBAction func buttonB9(sender: UIButton) {
        className.text = classB6.titleLabel?.text
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
    
    @IBAction func buttonC7(sender: UIButton) {
        className.text = classC7.titleLabel?.text
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
        classTime.text = "8:05" + " to " + "9:20"
    }
    @IBAction func buttonC8(sender: UIButton) {
        className.text = classC7.titleLabel?.text
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
    @IBAction func buttonC10(sender: UIButton) {
        className.text = classC7.titleLabel?.text
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
        classTime.text = "8:05" + " to " + "9:20"
    }

    @IBAction func buttonD7(sender: UIButton) {
        className.text = classD7.titleLabel?.text
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
        classTime.text = "10:20" + " to " + "11:35"
    }
    @IBAction func buttonD8(sender: UIButton) {
        className.text = classD7.titleLabel?.text
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
    @IBAction func buttonD10(sender: UIButton) {
        className.text = classD7.titleLabel?.text
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
    
    @IBAction func buttonE6(sender: UIButton) {
        className.text = classE6.titleLabel?.text
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
        classTime.text = "2:00" + " to " + "3:15"
    }
    @IBAction func buttonE8(sender: UIButton) {
        className.text = classE6.titleLabel?.text
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
    @IBAction func buttonE9(sender: UIButton) {
        className.text = classE6.titleLabel?.text
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
    
    @IBAction func buttonF6(sender: UIButton) {
        className.text = classF6.titleLabel?.text
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
        classTime.text = "12:30" + " to " + "1:45"
    }
    @IBAction func buttonF8(sender: UIButton) {
        className.text = classF6.titleLabel?.text
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
    @IBAction func buttonF9(sender: UIButton) {
        className.text = classF6.titleLabel?.text
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
    
    @IBAction func buttonG7(sender: UIButton) {
        className.text = classG7.titleLabel?.text
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
        classTime.text = "12:55" + " to " + "2:10"
    }
    @IBAction func buttonG8(sender: UIButton) {
        className.text = classG7.titleLabel?.text
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
    @IBAction func buttonG10(sender: UIButton) {
        className.text = classG7.titleLabel?.text
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
    
    @IBAction func break6(sender: UIButton) {
        className.text = "Breaklet"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "1:45" + " to " + "2:00"
    }
    @IBAction func break71(sender: UIButton) {
        className.text = "Assembly"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:25" + " to " + "9:55"
    }
    @IBAction func break72(sender: UIButton) {
        className.text = "Break"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:55" + " to " + "10:15"
    }
    @IBAction func break8(sender: UIButton) {
        className.text = "Break"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:40" + " to " + "10:15"
    }
    @IBAction func break9(sender: UIButton) {
        className.text = "Breaklet"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "1:45" + " to " + "2:00"
    }
    @IBAction func break10(sender: UIButton) {
        className.text = "Assembly"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:25" + " to " + "9:55"
    }
    
    @IBAction func lunch6(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "11:40" + " to " + "12:25"
    }
    @IBAction func lunch7(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "11:40" + " to " + "12:25"
    }
    @IBAction func lunch8(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    @IBAction func lunch9(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "11:40" + " to " + "12:25"
    }
    @IBAction func lunch10(sender: UIButton) {
        className.text = "Lunch"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:00" + " to " + "12:45"
    }
    
    @IBAction func common6(sender: UIButton) {
        className.text = "Common Classroom"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:25" + " to " + "10:15"
    }
    @IBAction func advising7(sender: UIButton) {
        className.text = "Advising"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:30" + " to " + "12:50"
    }
    @IBAction func collab7(sender: UIButton) {
        className.text = "Faculty Collaboration"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "2:15" + " to " + "3:15"
    }
    @IBAction func xblock9(sender: UIButton) {
        className.text = "X Block"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:25" + " to " + "10:15"
    }
    @IBAction func community10(sender: UIButton) {
        className.text = "X Block"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "9:55" + " to " + "10:35"
    }
    @IBAction func compass10(sender: UIButton) {
        className.text = "Compass"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "12:50" + " to " + "1:35"
    }
    @IBAction func tutorial10(sender: UIButton) {
        className.text = "Tutorial"
        classroom.text = ""
        teacherName.text = ""
        classTime.text = "2:55" + " to " + "3:15"
    }

    
    
    
}
