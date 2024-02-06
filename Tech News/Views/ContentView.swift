//
//  ContentView.swift
//  Tech News
//
//  Created by DIVYANI PRASAD THOTA on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.broadcasts) { broadcast in
                NavigationLink(destination: InfoView(url: broadcast.url)) {
                    HStack {
                        Text("\(broadcast.points)")
                        Text(broadcast.title)
                        
                    }
                }
                
            }
            .navigationBarTitle("Tech News")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}








