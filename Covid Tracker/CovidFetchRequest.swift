//
//  CovidFetchRequest.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class CovidFetchRequest: ObservableObject {
    

    init() {
        
        getCurrentTotal()
    }
    
    func getCurrentTotal() {

        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "adb956b751mshacb4ace21a2a85dp179ab7jsncce7494717d1"
        ]

        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=json", headers: headers).responseJSON { response in
            debugPrint(response)
        }
    }
}
