//
//  ProfileUtils.swift
//  cim413_FinalProject
//
//  Created by Alex Sanchez on 4/22/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

public class ProfileUtils{
    func createProfile() -> (Profile){
        let goalPaperCardboard : Goal = Goal(mtrlTp: MaterialType.Paper_Cardboard);
        let goalPlastic : Goal = Goal(mtrlTp: MaterialType.Plastic);
        let goalGlass : Goal = Goal(mtrlTp: MaterialType.Glass);
        let goalMisc : Goal = Goal(mtrlTp: MaterialType.Misc);
        
        let goals : [String : Goal] =
            [goalPaperCardboard.getMaterialType().rawValue:goalPaperCardboard,
             goalPlastic.getMaterialType().rawValue:goalPlastic,
             goalGlass.getMaterialType().rawValue:goalGlass,
             goalMisc.getMaterialType().rawValue:goalMisc];
        
        let totalGoals = TotalGoals(gls: goals);
        
        let level = Level()
        
        let profile = Profile(nm: "", lvl: level, gls: totalGoals);
        
        return profile;
    }
}
