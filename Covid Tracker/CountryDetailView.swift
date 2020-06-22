//
//  CountryDetailView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    @ObservedObject var countryStatisticsRequest = CountryStatisticsFetchRequest()
    var countryName: String
    
    var body: some View {
        VStack {
            VStack {
                
                CountryDetailRow(number: (countryStatisticsRequest.detailedCountryData?.confirmedCases.formatNumber()) ?? "Error", name: "Confirmed")
                    .padding(.top)
                
                CountryDetailRow(number: (countryStatisticsRequest.detailedCountryData?.activeCases.formatNumber()) ?? "Error", name: "Active Cases")
                
                CountryDetailRow(number: (countryStatisticsRequest.detailedCountryData?.newCases.formatNumber()) ?? "Error", name: "New Cases")
                
            }
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryName)
        .onAppear() {
            self.getStatistics()
        }
    }
    
    private func getStatistics() {
        countryStatisticsRequest.getStatsFor(country: self.countryName)
    }
}
