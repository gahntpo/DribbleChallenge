//
//  Product.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import Foundation

struct Product {
    let imageName: String
    let title: String
    let description: String
    
    static func example1() -> Product {
        let product = Product(imageName: "ProductImage1",
                              title: "Geometry 3D Elements",
                              description: "Hold up a rectangular priece of papr and sk all the favourite students.")
        return product
    }
    
    static func example2() -> Product {
        let product = Product(imageName: "ProductImage2",
                              title: "Abstract 3D Elements",
                              description: "An abstract may act as stand-alone entity the instead of a full paper.")
        return product
    }
}
