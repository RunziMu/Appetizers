//
//  Appetizer.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-05.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer",
                                           price: 6.99,
                                           imageURL: "",
                                           calories: 360,
                                           protein: 16,
                                           carbs: 20)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                        name: "Test Appetizer 1",
                                        description: "This is the description for my appetizer 1.",
                                        price: 6.99,
                                        imageURL: "",
                                        calories: 360,
                                        protein: 16,
                                        carbs: 20)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                        name: "Test Appetizer 2",
                                        description: "This is the description for my appetizer 2.",
                                        price: 6.99,
                                        imageURL: "",
                                        calories: 360,
                                        protein: 16,
                                        carbs: 20)
    
    static let orderItemThree = Appetizer(id: 0003,
                                          name: "Test Appetizer 3",
                                          description: "This is the description for my appetizer 3.",
                                          price: 6.99,
                                          imageURL: "",
                                          calories: 360,
                                          protein: 16,
                                          carbs: 20)
    
    static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]
}

