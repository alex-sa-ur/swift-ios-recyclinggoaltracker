//
//  Project_TableViewCell.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/30/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import UIKit

class Project_TableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numLabel: UILabel!
    @IBOutlet var doneImageView: UIImageView!
    
    var project: Project? {
        didSet {
            guard let project = project else { return }
            
            nameLabel.text = project.getName()
            numLabel.text = String(project.getQuantity())
            doneImageView.image = image(done: project.getDoneStatus())
        }
    }

    func image(done: Bool) -> UIImage? {
        let imageName = "Check"
        if done {
            return UIImage(named: imageName)
            
        }
        
        return nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
