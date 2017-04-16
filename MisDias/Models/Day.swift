//
//  Day.swift
//  MisDias
//
//  Created by Marlon David Ruiz Arroyave on 7/04/17.
//  Copyright © 2017 Eafit. All rights reserved.
//

import Foundation

class Day {
    
    //MARK: - Properties
    var day: String?
    var favorite: Bool?
    
    //MARK: - Init
    //Designated
    init(day: String, favorite:Bool) {
        self.day = day
        self.favorite = favorite
    }
    
    //Convenience
    convenience init(day: String) {
        self.init(day: day,favorite: false)
    }
    
    class func days() ->[Day] {
        let days = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]
        var daysObject = [Day]()
        
        for item in days {
            let day = Day(day: item)
            daysObject.append(day)
        }
        
        return daysObject
    }
    
}
