//
//  Model.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import Foundation


struct TotalData {
    
    let confirmed : Int
    let critical : Int
    let deaths : Int
    let recovered : Int
    
    var fatalityRate : Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate : Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}

struct CountryData {
    
    let country : String
    let confirmed : Int64
    let critical : Int64
    let deaths : Int64
    let recovered : Int64
    let longitude : Double
    let latitude : Double
    
    var fatalityRate : Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate : Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}


// dummy data
let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCountryData = CountryData(country: "test", confirmed: 500, critical: 300, deaths: 200, recovered: 100, longitude: 0.0, latitude: 0.0)
