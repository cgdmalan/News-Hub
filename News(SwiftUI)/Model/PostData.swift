//
//  PostData.swift
//  News(SwiftUI)
//
//  Created by Çiğdem Alan on 12.12.2023.
//

import Foundation


struct Result : Decodable {
    
    let hits: [Post]
    
    
}

struct Post : Identifiable, Decodable {
    
    var id : String {
        return objectID
    }
    let objectID : String
    let title : String
    let points : Int
    let url : String
    
    
}
