//
//  SearchView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            
            TextField("Country", text: $searchText)
            .padding()
        }
        
    .frame(height: 50)
        .background(Color("CardBackgroundGray"))
        
    }
}
