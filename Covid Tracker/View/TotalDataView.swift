//
//  TotalDataView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        
        VStack {
            
            HStack {
        
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .yellow)
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
                
            } // end of hstack
            
            HStack {
                    
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRate), name: "Death %", color: .red)
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered", color: .green)
                TotalDataCard(number: String(format: "%.2f", totalData.recoveredRate), name: "Recovery %", color: .green)
                
            } // end of hstack
            
        } // end of vstack
        
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
