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
    
    @Published var totalData: TotalData = testTotalData
    
    let headers: HTTPHeaders = [

        "x-rapidapi-host": "covid-193.p.rapidapi.com",
        "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"
    ]
    
    init() {
        
    }
    
    func getCurrentTotal() {
        
        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=undefined", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if result != nil {
                
                let json = JSON(result!)
                
                print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                let critical = json[0]["critical"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            } else {
                self.totalData = testTotalData
            }
        }
    }
    
}

