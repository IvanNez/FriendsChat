//
//  User.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 08.07.2024.
//

import Foundation


struct User: Codable, Identifiable, Hashable {
    
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    let profileImageUrl: String?
}

extension User{
    static let MOCK_USER = User(fullname: "Bruce Wayne", email: "batman@gmail.com", profileImageUrl: "batman")
}
