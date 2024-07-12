//
//  Root.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 12.07.2024.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
