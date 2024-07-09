//
//  ContentViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 09.07.2024.
//

import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribe()
    }
    
    private func setupSubscribe() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}
