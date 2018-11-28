//
//  AsteroidDataProcessor.swift
//  AsteroidTracker
//
//  Created by Kelly Bauman on 11/5/18.
//  Copyright © 2018 Kelly Bauman. All rights reserved.
//

import Foundation

class AsteroidDataProcessor {
    static func mapJsonToAsteroids(object: [String: AnyObject], asteroidKey: String) -> [Asteroid] {
        var mappedAsteroids: [Asteroid] = []
        
        guard let asteroids = object[asteroidKey] as? [String: NSArray] else {
            return mappedAsteroids }
        
//        let count = asteroids.count
//        let i = 0
//        while (i < count) {
//            if let asteroid = asteroids[i]?
//        }
        
        for (key,values) in asteroids {
            let value = values as! [NSDictionary]
            for v in value {
                let woof = key
                let meow = value
                let baah = ""
            }
            //            guard let Name = v["name"] as? String,
            //                let MissDistance = v["miss_distance"] as? String else { continue }
            //            let asteroidClass = Asteroid(Name: Name, MissDistance: MissDistance)
            //            mappedAsteroids.append(asteroidClass)
            
            
            let moo = ""
        }
        
        
        return mappedAsteroids
    }
}
