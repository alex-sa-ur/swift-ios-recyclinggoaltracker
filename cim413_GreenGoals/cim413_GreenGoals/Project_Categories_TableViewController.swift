//
//  Project_Categories_TableViewController.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/30/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import UIKit

class Project_Categories_TableViewController: UITableViewController {
    var projects = ProjectUtils().createProjectList()
    var categories = [MaterialType.Plastic, MaterialType.Paper_Cardboard, MaterialType.Glass]
    var currentCategory : [Project]?
    
    @IBAction func canceltoProject_Categories_TableViewController(_ segue: UIStoryboardSegue){
        
    }
    
    @IBAction func markAsDone(_ segue: UIStoryboardSegue){
        guard let project_TableViewController = segue.source as? Project_TableViewController,
            let segue_project = project_TableViewController.project else {
                return
        }
        
        Profile_ViewController.sharedInstance.profile.getLevel().addPoints(points: segue_project.getQuantity())
        
        for project in projects[segue_project.getMaterialType()]! {
            
            if project.getName() == segue_project.getName(){
                project.setDoneStatus(new_status: true)
            }
        }
        
        tableView.reloadData()
       
        if Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[segue_project.getMaterialType()]!.getQuantityDesired() <= Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[segue_project.getMaterialType()]!.getQuantityDone(){
            
            if Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.getQuantityDesired() <= Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.getQuantityDone() {
                
                let alert = UIAlertController(
                    title: "Points Added!",
                    message: "Congratulations, you just added \(segue_project.getQuantity() ) point(s)! Consider updating your goal for \(segue_project.getMaterialType())!",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
            } else {
                
                let alert = UIAlertController(
                    title: "Points Added!",
                    message: "Congratulations, you just added \(segue_project.getQuantity() ) to your \(MaterialType.Misc.rawValue) progress!",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
            }
            
            Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.setQuantityDone(newQuant: Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.getQuantityDone() + segue_project.getQuantity())
            
        } else {
            Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[segue_project.getMaterialType()]!.setQuantityDone(newQuant: Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[segue_project.getMaterialType()]!.getQuantityDone() + segue_project.getQuantity())
            
            let alert = UIAlertController(
                title: "Points Added!",
                message: "Congratulations, you just added \(segue_project.getQuantity() ) to your \(segue_project.getMaterialType()) progress!",
                preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        // Configure the cell...
        let category = categories[indexPath.row]
        cell.textLabel?.text = category.rawValue

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProjectsSegue"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let project_Projects_TableViewController = segue.destination as! Project_Projects_TableViewController
                currentCategory = projects[categories[indexPath.row].rawValue]
                
                project_Projects_TableViewController.projects = currentCategory!
            }
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
