//
//  EditProfileView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/23/21.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var bioText: String
    @ObservedObject private var viewModel: EditProfileViewModel
    @Environment(\.presentationMode) var mode
    @Binding var user: User
    
    init(user: Binding<User>) {
        self._user = user
        self.viewModel = EditProfileViewModel(user: self._user.wrappedValue)
        self._bioText = State(initialValue: _user.wrappedValue.bio ?? "")
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: { viewModel.saveUserData(bioText) }, label: {
                    Text("Done")
                        .bold()
                })
            }
            .padding()
            
            TextArea(text: $bioText, placeholder: "Add your bio...")
                .frame(width: 370, height: 200)
                .padding()
            
            Spacer()
        }
        .onReceive(viewModel.$uploadComplete, perform: { completed in
            if completed {
                self.mode.wrappedValue.dismiss()
                self.user.bio = viewModel.user.bio
            }
        })
    }
}

