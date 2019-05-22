//
//  Goal.swift
//  RecyclaGoals
//
//  Created by Alex Sanchez on 4/21/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

class Goal {
    private var materialType: MaterialType;
    private var quantityDesired: Int;
    private var quantityDone: Int;
    
    init(mtrlTp: MaterialType, qnttDsrd: Int=0, qnttDn: Int=0){
        self.materialType = mtrlTp;
        self.quantityDesired = qnttDsrd;
        self.quantityDone = qnttDn;
    }
    
    public func getMaterialType() -> MaterialType{
        return self.materialType;
    }
    
    public func getQuantityDesired() -> Int{
        return self.quantityDesired;
    }
    
    public func setQuantityDesired(newQuant: Int){
        self.quantityDesired = newQuant;
    }
    
    public func getQuantityDone() -> Int{
        return self.quantityDone;
    }
    
    public func setQuantityDone(newQuant: Int){
        self.quantityDone = newQuant;
    }
}
