//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
 var running = false
    var data = AviatrixData ()
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    func start() -> Bool {
        running = true
        return running
    }
    var author = ""
    var location = "St. Louis"
    init (authorName: String) {
       author = authorName
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += data.knownDistances[location]![destination]!
        fuelLevel -= Double(data.knownDistances[location]![destination]!) / milesPerGallon
        location = destination
    }
    
    func distanceTo(target : String, location: String) -> Int {
        return data.knownDistances["St. Louis"]![target]!
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
