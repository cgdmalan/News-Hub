//
//  ContentView.swift
//  News(SwiftUI)
//
//  Created by Çiğdem Alan on 12.12.2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
  @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title)
                          
                    
                    }
                }
            }
              .navigationBarTitle("News")
              
              
            
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
        
        
        
    }
}

#Preview {
    ContentView()
}



    
    

