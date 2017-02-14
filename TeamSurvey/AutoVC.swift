//
//  AutoVC.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/7/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import UIKit

var newHasAuto = false
var newStartingPosition = 0
var newPassedLine = false

class AutoVC: UIViewController {
    
    @IBOutlet weak var startingPositionSC: UISegmentedControl!
    @IBOutlet weak var hasAutoSC: UISegmentedControl!
    @IBOutlet weak var passedLineSC: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    

    @IBAction func backButton(_ sender: Any) {
        
        navigationController!.popViewController(animated: true)
    }
    

    @IBAction func nextButton(_ sender: Any) {
        
        //newStartingPosition = startingPositionSC.selectedSegmentIndex + 1
        
        print(startingPositionSC.selectedSegmentIndex)
        
        
        if startingPositionSC.selectedSegmentIndex == 0 {
            newTeam?.position = 1
        }
        else if startingPositionSC.selectedSegmentIndex == 1{
             
            newTeam?.position = 2
        }
        else {
            newTeam?.position = 3
        }
        
        if hasAutoSC.selectedSegmentIndex == 0 {
            
            newTeam?.hasAuto = false
            //newHasAuto = false
        } else if hasAutoSC.selectedSegmentIndex == 1{
            
            newTeam?.hasAuto = true
            //newHasAuto = true
        }
        
        if passedLineSC.selectedSegmentIndex == 0 {
            
            newTeam?.passedLine = false
            //newPassedLine = false
        }
        else {
            
            newTeam?.passedLine = true
            //newPassedLine = true
        }
        print("\(newTeam?.hasAuto)")
    }
    
}
