//
//  ContentView.swift
//  Covid Tracker
//
//  Created by Argenis De La Rosa on 6/21/20.
//  Copyright © 2020 Argenis De La Rosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        TabView {
            
            RecentView()
                .tabItem {
                    Tab(imageName: "chart.bar", text: "Recent")
            }
            .tag(0)
            
            // add another item
        }
        
    }
}

private struct Tab: View {
    
    let imageName : String
    let text : String
    
    var body: some View {
        
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
