//
//  User.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-09.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
