//
//  ChatViewModel.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 10.07.2024.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messageText = ""
    @Published var messages = [Message]()
    
    let service: ChatService
    
    init(user: User) {
        self.service = ChatService(chatPartner: user)
        observerMessages()
    }
    
    func observerMessages() {
        service.observerMessages() { messages in
            self.messages.append(contentsOf: messages)
        }
    }
    
    func sendMessage() {
        service.sendMessage(messageText)
    }
    
}
