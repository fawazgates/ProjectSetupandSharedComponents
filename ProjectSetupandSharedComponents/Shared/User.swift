//
//  User.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName, maidenName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock: User {
        User(
            id: 444,
            firstName: "Fawaz",
            lastName: "Gates",
            maidenName: "",
            age: 23,
            email: "fawaz@upi.edu",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 180,
            weight: 200)
    }
}
