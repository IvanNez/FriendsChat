//
//  ActiveViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 12.07.2024.
//

import Foundation
import Firebase


class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    
    init() {
        Task { try await fetchUser() }
    }
    
    
    @MainActor
    private func fetchUser() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let users =  try await UserService.fetchAllUser(limit: 10)
        self.users = users.filter({$0.id != currentUid})
    }
}
