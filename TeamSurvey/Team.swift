//
//  Team.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/2/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import Foundation
import UIKit

var teams = [Team]()
var selectedTeam: Team?
var newTeam : Team?

class Team {
    
    //properties - variables
    var name : String
    var number : Int
    var hasAuto : Bool
    var position : Int
    var image : UIImage
    var rating : Int
    var passedLine : Bool
    var highGoals : Int
    var placedGears : Int
    
    
    // initilizations
    
    init(name: String, number: Int, hasAuto: Bool, position: Int, image: UIImage, rating: Int, passedLine: Bool, highGoals: Int, placedGears : Int) {
        
        self.name = name
        self.number = number
        self.hasAuto = hasAuto
        self.position = position
        self.image = image
        self.rating = rating
        self.passedLine = passedLine
        self.highGoals = highGoals
        self.placedGears = placedGears
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
        self.hasAuto = false
        self.image = UIImage(named: "FIRST-horizontal")!
        self.rating = 1
        self.position = 1
        self.passedLine = false
        self.highGoals = 0
        self.placedGears = 0
        
    }
    
    
    
    
    // other methods
    
    
    
    
    
    
    
    
    
    
}
