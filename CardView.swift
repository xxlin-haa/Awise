//
//  CardView.swift
//  Awise
//
//  Created by liu zhenke on 10/9/22.
//

import UIKit

struct Card: Identifiable{
    let id = UUID()
    let name: String
    let imageName: String
    let age: Int
    let bio: String
    
    var x: CGFloat = 0.0
    
    var y: CGFloat = 0.0
    
    var degree: Double = 0.0
    
    static var data:[Card]{
        [
        Card(name: "Alice Awise", imageName: "Image", age: 18, bio:"freshman"),
        Card(name: "Dooley", imageName: "signup", age: 18, bio:"senior"),
        Card(name: "Friends", imageName: "sign", age: 18, bio:"sophomore")
        ]
    }
}
