//
//  TeamTableVC.swift
//  TeamSurvey
//
//  Created by Sebastian Molina on 2/2/17.
//  Copyright © 2017 Sebastian Molina. All rights reserved.
//

import UIKit

class TeamTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        teams.append(Team(name: "Shark Attack", number: 744, hasAuto: true, position: 2, image: UIImage(named: "744")!, rating: 5, passedLine: true, highGoals: 300, placedGears: 30))
        teams.append(Team(name: "Ninjineers", number: 2383, hasAuto: false, position: 1, image: UIImage(named: "2383")!, rating: 2, passedLine: false, highGoals: 10, placedGears: 3))
        teams.append(Team(name: "SPAM", number: 180, hasAuto: true, position: 3, image: UIImage(named: "180")!, rating: 4, passedLine: true, highGoals: 50, placedGears: 180))
        teams.append(Team(name: "Children of the Swamp", number: 179, hasAuto: true, position: 1, image: UIImage(named: "179")!, rating: 3, passedLine: false, highGoals: 0, placedGears: 0))

    
        let background = UIImageView(image: UIImage(named: "FIRST-iphone.jpg"))
        tableView.backgroundView = background
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = teams[indexPath.row].name
        cell.detailTextLabel?.text = "Team \(teams[indexPath.row].number)"
        cell.imageView?.image = teams[indexPath.row].image
        
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedTeam = teams[indexPath.row]
    
        
    }
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
