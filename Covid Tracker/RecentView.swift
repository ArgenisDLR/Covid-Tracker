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
    @State var isSearchVisible = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidFetch.totalData)
                
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCountry.filter {
                        
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        NavigationLink(destination: CountryDetailView(countryData: countryData)) {
                            
                            CountryDataRowView(countryData: countryData)
                            
                        }
                        
                        
                    }
                }
                
            } // END OF VSTACK
                .navigationBarTitle("Recent Data", displayMode: .inline)
                
                .navigationBarItems(trailing:
                    Button(action: {
                        
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                        
                    }, label: {
                        
                        Image(systemName: "magnifyingglass")
                        
                    })
            )
        } // END OF NAVIGATION VIEW
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
