//
//  CountryStatisticsFetchRequest.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/22/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CountryStatisticsFetchRequest: ObservableObject {
    
    @Published var detailedCountryData: DetailCountryData?
    
    let headers: HTTPHeaders = [
        
        "x-rapidapi-host": "covid-193.p.rapidapi.com",
        "x-rapidapi-key": "adb956b751mshacb4ace21a2a85dp179ab7jsncce7494717d1"
    ]
    
    init() {
        
    }
    
    func getStatsFor(country: String) {
        
        AF.request("https://covid-193.p.rapidapi.com/statistics?country=\(country)", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if result != nil {
                
                let json = JSON(result!)
                
                let country = json["response"][0]["country"].stringValue
                
                let deaths = json["response"][0]["deaths"]["total"].intValue
                let newDeaths = json["response"][0]["deaths"]["new"].intValue
                
                let tests = json["response"][0]["tests"]["total"].intValue
                let criticalCases = json["response"][0]["cases"]["critical"].intValue
                let totalCases = json["response"][0]["cases"]["total"].intValue
                let activeCases = json["response"][0]["cases"]["active"].intValue
                let newCases = json["response"][0]["cases"]["new"].intValue
                let recoveredCases = json["response"][0]["cases"]["recovered"].intValue
                
                self.detailedCountryData = DetailCountryData(country: country, confirmedCases: totalCases, newCases: newCases, recoveredCases: recoveredCases, criticalCases: criticalCases, activeCases: activeCases, deaths: deaths, newDeaths: newDeaths, testsDone: tests)
                
            }
        }
    }
}

