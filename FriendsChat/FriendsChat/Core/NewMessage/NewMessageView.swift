//
//  NewMessage.swift
//  FriendsChat
//
//  Created by Иван Незговоров on 08.07.2024.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText = ""
    @Environment(\.dismiss) var dissmis
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                Text("CONTACTS")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0 ... 10, id: \.self) { user in
                    VStack {
                        HStack {
                            CircularProfileImageView(user: User.MOCK_USER, size: .small)
                            
                            
                            Text("Chadwick Bozeman")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.leading)
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dissmis()
                    }
                    .foregroundColor(.black)
                }
        }
        }
    }
}

#Preview {
    NavigationStack {
        NewMessageView()
    }
}
