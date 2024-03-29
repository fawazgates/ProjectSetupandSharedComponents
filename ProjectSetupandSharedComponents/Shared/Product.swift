//
//  Product.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
    
    var firstImage: String {
        images.first ?? Constants.randomImage
    }
    
    static var mock: Product {
        Product (id: 123,
                        title: "example product title",
                        description: "this product some mock product description goes here.",
                        price: 999,
                        discountPercentage: 15,
                        rating: 4.5,
                        stock: 60,
                        brand: "Apple",
                        category: "Electronic devices",
                        thumbnail: Constants.randomImage,
                        images: [Constants.randomImage, Constants.randomImage, Constants.randomImage])
    }
    
}

struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
}