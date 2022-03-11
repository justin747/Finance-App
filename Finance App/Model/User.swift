//
//  User.swift
//  Finance App
//
//  Created by Justin747 on 3/10/22.
//

import SwiftUI

//MARK: User Model


struct User: Identifiable {
    var id  =   UUID().uuidString
    var name:   String
    var image:  String
    var type:   String
    var amount: String
    var color:  Color
}

var users: [User] = [
    User(name: "iJustine", image: "User1", type: "Sent", amount: "-$120", color: Color.black),
    User(name: "Jessica", image: "User3", type: "Received", amount: "+$35", color: Color("Orange")),
    User(name: "Jenna", image: "User3", type: "Rejected", amount: "-$20", color: Color.red),
    User(name: "Rebecca", image: "User4", type: "Received", amount: "+$40", color: Color("Orange"))
]
