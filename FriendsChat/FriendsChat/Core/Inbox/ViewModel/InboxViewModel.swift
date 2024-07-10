//
//  InboxViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 09.07.2024.
//

import Foundation
import Combine
import Firebase


class InboxViewModel: ObservableObject {
    
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
    
    
}
