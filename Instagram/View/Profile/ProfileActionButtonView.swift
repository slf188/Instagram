//
//  ProfileActionButtonView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    var isFollowed: Bool { return viewModel.user.isFollowed! }
    
    var body: some View {
        if viewModel.user.isCurrentUser {
            Button(action: { viewModel.follow() }, label: {
                Text("Edit Profile")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 360, height: 32)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            })
        } else {
            HStack {
                Button(action: { isFollowed ? viewModel.unfollow() : viewModel.follow() }, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .background(isFollowed ? Color.white : Color.blue)
                        .foregroundColor(isFollowed ? .black : .white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
                        )
                })
                .cornerRadius(3)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                })
            }
        }
    }
}
