//
//  InfoView.swift
//  Tech News
//
//  Created by DIVYANI PRASAD THOTA on 06/02/24.
//

import SwiftUI


struct InfoView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    InfoView(url: "https://www.google.com")
}





