//
//  MapContainerView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/22/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountry)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
