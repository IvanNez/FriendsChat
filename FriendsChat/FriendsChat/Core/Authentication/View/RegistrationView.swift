//
//  RegistrationView.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 08.07.2024.
//

import SwiftUI

struct RegistrationView: View {

    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            // logo image
            Image("messenger-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            // text fields
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                TextField("Enter your fullname", text: $viewModel.fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                SecureField("Enter you password", text: $viewModel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            .padding(.top, 30)
            
            Button(action: {
                Task { try await viewModel.createUser() }
            }, label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            })
            .padding(.vertical, 10)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("A have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                    
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
