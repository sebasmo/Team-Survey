//
//  TeleopVC.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/7/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import UIKit

var newPlacedGears = 0
var newHighGoals = 0
var newMissedHigh = 0
var newLowGoal = 0


class TeleopVC: UIViewController {

    @IBOutlet weak var placedGears: UILabel!
    @IBOutlet weak var highGoals: UILabel!
    @IBOutlet weak var missedHigh: UILabel!
    @IBOutlet weak var lowGoal: UILabel!
    @IBOutlet weak var placedGearsOut: UIStepper!
    @IBOutlet weak var highGoalsOut: UIStepper!
    @IBOutlet weak var missedHighOut: UIStepper!
    @IBOutlet weak var lowGoalOut: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        placedGearsOut.maximumValue = 21
        highGoalsOut.maximumValue = 300
        missedHighOut.maximumValue = 300
        lowGoalOut.maximumValue = 400
    }
    
    @IBAction func placedGearsButton(_ sender: Any) {
        placedGears.text = "Placed Gears: \(Int(placedGearsOut.value))"
    }
    
    @IBAction func highGoalsButton(_ sender: Any) {
        highGoals.text = "High Goals: \(Int(highGoalsOut.value))"
    }
    @IBAction func missedHighButton(_ sender: Any) {
        missedHigh.text = "Missed High: \(Int(missedHighOut.value))"
    }
    @IBAction func lowGoalButton(_ sender: Any) {
        lowGoal.text = "Low Goals: \(Int(lowGoalOut.value))"
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        navigationController!.popViewController(animated: true)
    }
    @IBAction func saveButton(_ sender: Any) {
        
//        newPlacedGears = Int(placedGearsOut.value)
//        newHighGoals = Int(highGoalsOut.value)
//        newMissedHigh = Int(missedHighOut.value)
//        newLowGoal = Int(lowGoalOut.value)
        
        newTeam?.placedGears = Int(placedGearsOut.value)
        newTeam?.highGoals = Int(highGoalsOut.value)
        
//        teams.append(Team(name: newTeamName, number: newTeamNumber, hasAuto: newHasAuto, position: newStartingPosition, image: UIImage(named: "1902")!, rating: 1, passedLine: newPassedLine, highGoals: newHighGoals, placedGears: newPlacedGears))
        
        teams.append(newTeam!)
        
        performSegue(withIdentifier: "unwindToHome", sender: self)
        
        
    }

}
