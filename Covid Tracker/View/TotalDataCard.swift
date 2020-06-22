//
//  TotalDataCard.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            } // End of Vstack
                .frame(width: geometry.size.width, height: 80, alignment: .center)
                .background(Color("cardBackgroundGray" ))
                .cornerRadius(8.0)
        } // End of geometry
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
