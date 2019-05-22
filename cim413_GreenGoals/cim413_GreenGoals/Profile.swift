//
//  Profile.swift
//  RecyclaGoals
//
//  Created by Alex Sanchez on 4/21/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

class Profile{
    private var name: String;
    private var level: Level;
    private var goals: TotalGoals;
    
    init(nm: String, lvl: Level, gls: TotalGoals){
        self.name = nm;
        self.level = lvl;
        self.goals = gls;
    }
    
    public func getName() -> String?{
        return self.name;
    }
    
    public func setName(nm: String){
        self.name = nm;
    }
    
    public func getLevel() -> Level{
        return self.level;
    }
    
    public func getGoals() -> TotalGoals{
        return self.goals;
    }
}
