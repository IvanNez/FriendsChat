//
//  RegistrationViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 09.07.2024.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService().createUser(withEmail: email, password: password, fullname: fullname)
    }
    
}


