//
//  Project_Projects_TableViewController.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/30/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import UIKit

class Project_Projects_TableViewController: UITableViewController {
    var projects : [Project] = []
    var currentProject : Project?

    @IBAction func canceltoProject_Projects_TableViewController(_ segue: UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = projects[0].getMaterialType()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return projects.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectCell", for: indexPath) as! Project_TableViewCell
        
        // Configure the cell...
        let project = projects[indexPath.row]
        cell.project = project
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProjectSegue"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let project_TableViewController = segue.destination as! Project_TableViewController
                currentProject = projects[indexPath.row]
                project_TableViewController.project = currentProject
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
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
