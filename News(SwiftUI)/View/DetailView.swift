//
//  DetailView.swift
//  News(SwiftUI)
//
//  Created by Çiğdem Alan on 12.12.2023.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    
    let url : String?
    
    var body: some View {
      WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


