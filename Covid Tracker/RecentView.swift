//
//  RecentView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText : String = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCountry.filter {
                        
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        CountryDataRowView(countryData: countryData)
                    }
                }
                
            } // end of v stack
        } // end of navigation view
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
