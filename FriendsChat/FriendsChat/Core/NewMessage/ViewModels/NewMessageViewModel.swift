//
//  NewMessageViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 09.07.2024.
//

import Foundation
import Firebase

@MainActor
class NewMessageViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUser() }
    }
    
    func fetchUser() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let users =  try await UserService.fetchAllUser()
        self.users = users.filter({$0.id != currentUid})
    }
    
}
