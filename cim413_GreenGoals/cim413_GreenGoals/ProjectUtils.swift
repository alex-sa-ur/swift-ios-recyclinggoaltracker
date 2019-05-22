//
//  ProjectUtils.swift
//  cim413_GreenGoals
//
//  Created by Alex Sanchez on 4/30/19.
//  Copyright © 2019 Alejandro Sanchez. All rights reserved.
//

import Foundation

public class ProjectUtils{
    func createProjectList() -> [String:[Project]]{
        let plastic_1: Project =
            Project(
                nm: "Plastic Bottle Planter",
                imgNm: "plastic1",
                inst:
                "1. Cut the bottom third of a 2-liter bottle.\n" +
                "2. Paint the bottle white or the color of your choice.\n" +
                "3. Use parts of the rest of the bottle to cut out ears.\n" +
                "4. Draw a face and other features on the bottle.\n" +
                "5. Fill the bottle with seeds and soil.\n",
                mtrl: MaterialType.Plastic,
                qnt: 1)
        
        let plastic_2: Project =
            Project(
                nm: "Honey Bear Bottle Lamp",
                imgNm: "plastic2",
                inst:
                "You will need an empty and cleaned honey bear bottle, lightbulb and chord for lightbulb.\n" +
                "1. Cut the bottom part of the bottle using an exacto knife or a plain cutter.\n" +
                "2. Spray 3 coats of white spray paint on the bottle and let it dry.\n" +
                "3. Once it's dry, then place the lightbulb underneath the bottle.\n",
                mtrl: MaterialType.Plastic,
                qnt: 1)
        
        let plastic_3: Project =
            Project(
                nm: "Lotion Bottle Into a Charging Dock",
                imgNm: "plastic3",
                inst:
                "1. Measure your cell phone against the bottle, to be sure the bottle isn’t too big or too small.\n" +
                "2. Decide how high you wanted the front of the holder to be.  Then make a line with a pen across the front at that point.\n" +
                "3. Then turn the bottle around and continue the line to the back but curved upwards.\n" +
                "4. Cut along the line using scissors or box cutter.\n" +
                "5. Using a box cutter, cut a square out of the back bottle for the outlet.\n" +
                "6. You may now design the holder as you wish using paint, markers and/or fabric",
                mtrl: MaterialType.Plastic,
                qnt: 1)
        
        let paper_1: Project =
            Project(
                nm: "Cardboard Dinner Circles",
                imgNm: "paper1",
                inst:
                "1. Cut a cardboard tube from a roll of plastic wrap or foil into several 1-inch size tubes.\n" +
                "2. Obtain one-quarter yard of fabric and cut it evenly for each tube.\n" +
                "3. Use fabric glue or double-sided tape to secure the cloth to the inside of each cardboard coil.",
                mtrl: MaterialType.Paper_Cardboard,
                qnt: 1)
        
        let paper_2: Project =
            Project(
                nm: "Bookmarks",
                imgNm: "paper2",
                inst:
                "1. Cut off the unused portions of several sheets of paper.\n" +
                "2. Glue together 3-5 of the unused portions, and then cut it to bookmark size.\n" +
                "3. Decorate the bookmark.\n" +
                "4. Punch a hole in the top of the bookmark, and attach a ribbon.",
                mtrl: MaterialType.Paper_Cardboard,
                qnt: 5)
        
        let paper_3: Project =
            Project(
                nm: "Pikachu Origami",
                imgNm: "paper3",
                inst:
                "You need a square sheet of paper to fold origami, so cut your used paper into perfect squares.\n" +
                "1. Start with a square piece of paper color side down.\n" +
                "2. Fold the left half to the right, then unfold.\n" +
                "3. Fold the bottom half to the top.\n" +
                "4. Fold both layers of the top triangle corner to the bottom edge. Make surethe tip of the corner lines up with the vertical crease in the center.\n" +
                "5. Fold the left and right sides up diagonally towards the center.\n" +
                "6. Fold the left and right corners to the center.\n" +
                "7. Fold the left ear diagonally to the side.\n" +
                "8. Fold the right ear to the side.\n" +
                "9. Fold the bottom corner up to flatten the origami pikachu's chin.\n" +
                "10. Fold in the pointy cheeks.\n" +
                "11. Turn the pikachu over and draw the face. Pika! Pika!",
                mtrl: MaterialType.Paper_Cardboard,
                qnt: 1)
        
        let glass_1: Project =
            Project(
                nm: "Glass Lamp",
                imgNm: "glass1",
                inst:
                "1. Select a bottle and remove all labels.\n" +
                "2. Take a diamond core drill and drill a small hole near to the bottom just wide enough to fit your lead through comfortably.\n" +
                "3. Place lightbulb and cord through opening and fish the cord through the newly drilled hole.\n" +
                "4. Attach the lamp shade and wireframe.\n",
                mtrl: MaterialType.Glass,
                qnt: 1)
        
        let glass_2: Project =
            Project(
                nm: "Glass Candle Holder",
                imgNm: "glass2",
                inst:
                "1. Select glass bottle.\n" +
                "2. Cut a hole in the bottle using the traditional bottle cutting method.\n" +
                "3. Smooth edges of glass bottle using diamond buffer.\n" +
                "4. Decorate bottle.\n" +
                "5. Place candle inside.",
                mtrl: MaterialType.Glass,
                qnt: 1)
        
        let glass_3: Project =
            Project(
                nm: "Glass Bird Feeder",
                imgNm: "glass3",
                inst:
                "1. Construct the feeder as you would a birdhouse, leaving out a few walls. Our feeder is about 17 in. high and 5 in. wide. Remember to take into account the size of the wine bottle.\n" +
                "2. Once the housing is done, mount the bottle with wire rope to hold it in place. Just pull the rope tight against the spot where the bottom of the upside-down bottle will rest and secure it with a couple of washers and screws on the inner wall of the housing.\n" +
                "3. At the base of the feeder, where the bottle opening is, screw in an L hook against the back of the feeder base. You want to position the hook so the lip of the bottle rests on it to keep the feeder at a proper height.\n" +
                "4. Use a funnel to fill the bottle with birdseed. Turn it upside down and secure it with the L hook and the wire rope. The seed will come out by itself, bit by bit.",
                mtrl: MaterialType.Glass,
                qnt: 1)
        
        return [
            MaterialType.Plastic.rawValue : [plastic_1, plastic_2, plastic_3],
            MaterialType.Paper_Cardboard.rawValue : [paper_1, paper_2, paper_3],
            MaterialType.Glass.rawValue : [glass_1, glass_2, glass_3]]
    }
    
}
