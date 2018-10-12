//
//  FirstViewController.swift
//  Scheduler
//
//  Created by Chris W. on 6/17/16.
//  Copyright © 2016 Chris W. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    static var needsRefresh = false
    
    //MARK: Properties
    
    @IBOutlet weak var viewSelect: UISegmentedControl!
    @IBOutlet weak var thisWeek: UIView!
    @IBOutlet weak var nextWeek: UIView!
    @IBOutlet weak var altSchedule: UILabel!
    
    @IBOutlet weak var mondayView: UIView!
    @IBOutlet weak var tuesdayView: UIView!
    @IBOutlet weak var wednesdayView: UIView!
    @IBOutlet weak var thursdayView: UIView!
    @IBOutlet weak var fridayView: UIView!

    @IBOutlet weak var monday2View: UIView!
    @IBOutlet weak var tuesday2View: UIView!
    @IBOutlet weak var wednesday2View: UIView!
    @IBOutlet weak var thursday2View: UIView!
    @IBOutlet weak var friday2View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(FirstViewController.updateView), name: UIApplicationDidBecomeActiveNotification, object: nil)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(FirstViewController.handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(FirstViewController.handleSwipes(_:)))
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        
    }

    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        updateView()
    }
    
    func updateView()
    {
        viewSelect.selectedSegmentIndex = 1;
        refreshView()
    }
    
    func refreshView()
    {
        mondayView.hidden = true
        tuesdayView.hidden = true
        wednesdayView.hidden = true
        thursdayView.hidden = true
        fridayView.hidden = true
        monday2View.hidden = true
        tuesday2View.hidden = true
        wednesday2View.hidden = true
        thursday2View.hidden = true
        friday2View.hidden = true
        thisWeek.hidden = true
        nextWeek.hidden = true
        viewSelect.hidden = false
        altSchedule.hidden = true
        
        /*let weekType = checkWeek()
        switch weekType
        {
        case 0: viewSelect.hidden = true
                altSchedule.hidden = false
            
        case 1: thisWeek.hidden = false
            
        case 2: nextWeek.hidden = false
            
        default: break
        }
         */
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
        let year =  components.year
        let month = components.month
        let day = components.day
        let dateString = String(month) + "-" + String(day) + "-" + String(year)
        let dayOfWeek = getDayOfWeek(dateString)
        
        switch viewSelect.selectedSegmentIndex
        {
        case 0:
            switch dayOfWeek
            {
            case 2:
                if(checkWeek() == 1)
                {   mondayView.hidden = false}
                else if(checkWeek() == 2)
                {   monday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
                
            case 3:
                if(checkWeek() == 1)
                {   tuesdayView.hidden = false}
                else if(checkWeek() == 2)
                {   tuesday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
                
            case 4:
                if(checkWeek() == 1)
                {   wednesdayView.hidden = false}
                else if(checkWeek() == 2)
                {   wednesday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
                
            case 5:
                if(checkWeek() == 1)
                {   thursdayView.hidden = false}
                else if(checkWeek() == 2)
                {   thursday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
                
            case 6:
                if(checkWeek() == 1)
                {   fridayView.hidden = false}
                else if(checkWeek() == 2)
                {   friday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
                
            default:
                if(checkWeek() == 1)
                {   mondayView.hidden = false}
                else if(checkWeek() == 2)
                {   monday2View.hidden = false}
                else
                {   altSchedule.hidden = false}
            }
            thisWeek.hidden = true
            nextWeek.hidden = true
            
        case 1:
            if(checkWeek() == 1)
            {   thisWeek.hidden = false}
                //nextWeek.hidden = true}
            else if(checkWeek() == 2)
            {   nextWeek.hidden = false}
                //thisWeek.hidden = true}
            else
            {   altSchedule.hidden = false}
            
        case 2:
            if(checkWeek() == 1)
            {   nextWeek.hidden = false}
            else if(checkWeek() == 2)
            {   thisWeek.hidden = false}
            else
            {   altSchedule.hidden = false}
            
        default: thisWeek.hidden = false
        }
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
        if(dateInt>=823&&dateInt<=826 || dateInt>=903&&dateInt<=909 || dateInt>=917&&dateInt<=923 || dateInt>=1001&&dateInt<=1007 || dateInt>=1015&&dateInt<=1021 || dateInt>=1029&&dateInt<=1104 || dateInt>=1112&&dateInt<=1118 || dateInt>=1124&&dateInt<=1202 || dateInt>=114&&dateInt<=120 || dateInt>=128&&dateInt<=203 || dateInt>=211&&dateInt<=217 || dateInt>=225&&dateInt<=310 || dateInt>=317&&dateInt<=324 || dateInt>=415&&dateInt<=421 || dateInt>=429&&dateInt<=505 || dateInt>=513&&dateInt<=519 || dateInt>=525&&dateInt<=822)
        {   return 1}
        else if (dateInt==1121 || dateInt==1122 || dateInt==1123 || dateInt==221 || dateInt==222 || dateInt==315 || dateInt==316)
        {   return 0}
        else
        {   return 2}
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
    

    //MARK: Actions
    
    @IBAction func indexChanged(sender: UISegmentedControl)
    {
        refreshView()
    }

    func handleSwipes(sender: UISwipeGestureRecognizer) {
        if (sender.direction == .Left)
        {
            if (viewSelect.selectedSegmentIndex < 2)
            {viewSelect.selectedSegmentIndex += 1}
            refreshView()
        }
        if(sender.direction == .Right)
        {
            if (viewSelect.selectedSegmentIndex > 0)
            {viewSelect.selectedSegmentIndex -= 1}
            refreshView()
        }
    }
}

