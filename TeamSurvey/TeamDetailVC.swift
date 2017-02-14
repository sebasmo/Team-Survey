//
//  ViewController.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/2/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate {

    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamNumber: UILabel!
    @IBOutlet weak var hasAuto: UILabel!
    @IBOutlet weak var teamRating: UIImageView!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var passedLine: UILabel!
    @IBOutlet weak var highGoals: UILabel!
    @IBOutlet weak var placedGears: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if selectedTeam != nil {
            teamLogo.image = selectedTeam!.image
            teamName.text = selectedTeam!.name
            teamNumber.text = "Team \(selectedTeam!.number)"
            hasAuto.text = "Autonomous: \(selectedTeam!.hasAuto)"
            if UserDefaults.standard.integer(forKey: selectedTeam!.name) != 0 {
            teamRating.image = UIImage(named: "\(UserDefaults.standard.integer(forKey: selectedTeam!.name))Stars")
            } else {
                setRating(selectedTeam!.rating)
                teamRating.image = UIImage(named: "\(UserDefaults.standard.integer(forKey: selectedTeam!.name))Stars")
            }
            position.text = "Position From Boiler: \(selectedTeam!.position)"
            passedLine.text = "Passed Break Line: \(selectedTeam!.passedLine)"
            highGoals.text = "High Goals: \(selectedTeam!.highGoals)"
            placedGears.text = "Placed Gears: \(selectedTeam!.placedGears)"
            
        }
    }

    func setRating(_ rating: Int) {
        selectedTeam!.rating = rating
        UserDefaults.standard.set(selectedTeam!.rating, forKey: selectedTeam!.name)
    }
    
    
    @IBAction func fiveStars(_ sender: Any) {
        teamRating.image = UIImage(named: "5Stars")
        setRating(5)
    }
    
    @IBAction func fourStars(_ sender: Any) {
        teamRating.image = UIImage(named: "4Stars")
        setRating(4)
    }

    @IBAction func threeStars(_ sender: Any) {
        teamRating.image = UIImage(named: "3Stars")
        setRating(3)
    }

    @IBAction func twoStars(_ sender: Any) {
        teamRating.image = UIImage(named: "2Stars")
        setRating(2)
    }

    @IBAction func oneStar(_ sender: Any) {
        teamRating.image = UIImage(named: "1Stars")
        setRating(1)
    }

    @IBAction func imagePressed(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        
    }
    
}
