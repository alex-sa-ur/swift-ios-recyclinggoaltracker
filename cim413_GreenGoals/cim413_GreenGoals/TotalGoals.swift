//
//  TotalGoals.swift
//  RecyclaGoals
//
//  Created by Alex Sanchez on 4/21/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

class TotalGoals{
    private var goals: [String:Goal];
    private var timeGoal: Float;
    
    init(gls: [String:Goal], tmGl: Float = 0){
        self.goals = gls;
        self.timeGoal = tmGl;
    }
    
    public func getGoals() -> [String:Goal]{
        return self.goals;
    }
    
    public func getTimeGoal() -> Float{
        return self.timeGoal;
    }
    
    public func setTimeGoal(tmGl: Float){
        self.timeGoal = tmGl;
    }
}
