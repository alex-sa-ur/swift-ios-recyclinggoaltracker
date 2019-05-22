//
//  Goals_ViewController.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/29/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import UIKit

class Goals_ViewController: UIViewController {
    @IBOutlet var numGlass: UILabel!
    @IBOutlet var numPaper: UILabel!
    @IBOutlet var numPlastic: UILabel!
    @IBOutlet var numMisc: UILabel!
    @IBOutlet var goalGlass: UITextField!
    @IBOutlet var goalPaper: UITextField!
    @IBOutlet var goalPlastic: UITextField!
    @IBOutlet var goalMisc: UITextField!
    @IBOutlet var weeks: UITextField!
    
    
    func loadGoals(){
        numGlass.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Glass.rawValue]!.getQuantityDone())
        numPaper.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Paper_Cardboard.rawValue]!.getQuantityDone())
        numPlastic.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Plastic.rawValue]!.getQuantityDone())
        numMisc.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.getQuantityDone())
        
        goalGlass.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Glass.rawValue]!.getQuantityDesired())
        goalPaper.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Paper_Cardboard.rawValue]!.getQuantityDesired())
        goalPlastic.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Plastic.rawValue]!.getQuantityDesired())
        goalMisc.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[MaterialType.Misc.rawValue]!.getQuantityDesired())
        
        weeks.text = String(Profile_ViewController.sharedInstance.profile.getGoals().getTimeGoal())
        
        
    }
    
    func setGoal(type: MaterialType, quant: String){
    Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[type.rawValue]!.setQuantityDesired(newQuant: Int(quant) ?? Profile_ViewController.sharedInstance.profile.getGoals().getGoals()[type.rawValue]!.getQuantityDesired())
    }
    
    @IBAction func clearGoals(){
        goalGlass.text = "0"
        goalPaper.text = "0"
        goalPlastic.text = "0"
        goalMisc.text = "0"
        
        weeks.text = "0.0"
        
        let alert = UIAlertController(
            title: "Goals reset!",
            message: "Your goal values have been temporarily reset! If you wish to continue resetting, don't forget to save your progress.",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func restoreGoals(){
        let alert = UIAlertController(
            title: "Goals restored!",
            message: "Your goal values have been reversed to their last saved state!",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        loadGoals()
    }
    
    @IBAction func saveGoals(){
        setGoal(type: MaterialType.Glass, quant: goalGlass.text ?? "0")
        setGoal(type: MaterialType.Paper_Cardboard, quant: goalPaper.text ?? "0")
        setGoal(type: MaterialType.Plastic, quant: goalPlastic.text ?? "0")
        setGoal(type: MaterialType.Misc, quant: goalMisc.text ?? "0")
        Profile_ViewController.sharedInstance.profile.getGoals().setTimeGoal(tmGl: Float(weeks.text!) ?? 0.0)
        
        let alert = UIAlertController(
            title: "Goals saved!",
            message: "Your goal values have been saved!",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        loadGoals()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGoals()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        loadGoals()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
