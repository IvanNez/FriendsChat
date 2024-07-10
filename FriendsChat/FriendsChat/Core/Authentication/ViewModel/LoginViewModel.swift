//
//  LoginViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 09.07.2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
