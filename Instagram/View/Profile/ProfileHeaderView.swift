//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                KFImage(URL(string: viewModel.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack {
                    UserStatView(value: 3, title: "Posts")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 1, title: "Following")
                }.padding(.trailing, 28)
            }
            
            Text(viewModel.user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding([.leading, .top])
            
            Text("Wano 📍")
                .font(.system(size: 16))
                .padding(.leading)
                .padding(.top, 2)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView(viewModel: viewModel)
                
                Spacer()
            }
            .padding(.top)
        }
    }
}
