//
//  ListHeaderView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    
    
    
    var body: some View {
        
        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
//                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Confirmed")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
//                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Death")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
//                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Recovered")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing, 15)
//                .foregroundColor(Color.white)
        }
            
        .background(Color.gray)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
