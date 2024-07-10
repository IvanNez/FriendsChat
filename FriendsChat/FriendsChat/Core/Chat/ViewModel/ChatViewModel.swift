//
//  ChatViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 10.07.2024.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messageText = ""
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage() {
        MessageService.sendMessage(messageText, toUser: user)
    }
    
}
