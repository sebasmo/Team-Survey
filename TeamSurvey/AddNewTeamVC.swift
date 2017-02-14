//
//  AddNewTeamVC.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/7/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import UIKit

var newTeamName = ""
var newTeamNumber = 0

class AddNewTeamVC: UIViewController {

    
    @IBOutlet weak var teamName: UITextField!
    @IBOutlet weak var teamNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func cancelButton(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if teamNumber.text != nil {
            if teamName.text != nil && Int(teamNumber.text!) != nil{
                newTeam = Team(name: teamName.text!, number: Int(teamNumber.text!)!)
                
                //newTeamName = teamName.text!
                //newTeamNumber = Int(teamNumber.text!)!
                
                performSegue(withIdentifier: "goToAutonomous", sender: self)
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
}
