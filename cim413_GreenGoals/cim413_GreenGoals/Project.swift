//
//  Project.swift
//  RecyclaGoals
//
//  Created by Alex Sanchez on 4/21/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation
import UIKit

class Project {
    private var name: String;
    private var image_name: String;
    private var instructions: String;
    private var materialType: MaterialType;
    private var quantity: Int;
    private var done_status: Bool;
    
    init(nm:String, imgNm: String, inst: String, mtrl: MaterialType, qnt: Int, dn: Bool = false) {
        self.name = nm;
        self.image_name = imgNm;
        self.instructions = inst;
        self.materialType = mtrl;
        self.quantity = qnt;
        self.done_status = dn;
        
    }
    
    public func getName() -> String{
        return self.name;
    }
    
    public func getImage() -> String{
        return self.image_name;
    }
    
    public func getInstructions() -> String{
        return self.instructions;
    }
    
    public func getMaterialType() -> String{
        return self.materialType.rawValue;
    }
    
    public func getQuantity() -> Int{
        return self.quantity;
    }
    
    public func getDoneStatus() -> Bool{
        return self.done_status
    }
    
    public func setDoneStatus(new_status: Bool){
        self.done_status = new_status;
    }
    
}
