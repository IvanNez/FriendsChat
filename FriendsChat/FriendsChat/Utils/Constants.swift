//
//  Constants.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 10.07.2024.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
