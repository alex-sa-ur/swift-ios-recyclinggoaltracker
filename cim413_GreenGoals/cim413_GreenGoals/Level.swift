//
//  Level.swift
//  RecyclaGoals
//
//  Created by Alex Sanchez on 4/21/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

class Level {
    private var level: Int;
    private var pointsAcquired: Int;
    private var pointsNeeded:Int;
    
    init(lvl: Int = 1, pointsAcq: Int = 0){
        self.level = lvl;
        self.pointsAcquired = pointsAcq;
        self.pointsNeeded = (self.level * 10) / 2;
    }
    
    private func checkLevelUp(){
        if self.level < 100{
            if self.pointsAcquired >= self.pointsNeeded{
                self.level += 1;
                self.pointsAcquired %= self.pointsNeeded;
                self.pointsNeeded = (self.level * 10) / 2;
            }
        }
    }
    
    public func getLevel() -> Int {
        return self.level;
    }
    
    public func getPointsAcquired() -> Int {
        return self.pointsAcquired;
    }
    
    public func addPoints(points: Int){
        self.pointsAcquired += points;
        checkLevelUp();
    }
    
    public func getPointsNeeded() -> Int{
        return self.pointsNeeded;
    }
}
