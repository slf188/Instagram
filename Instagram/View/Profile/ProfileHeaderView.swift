//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Image("oden")
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
            
            Text("Kozuki Oden")
                .font(.system(size: 16, weight: .semibold))
                .padding([.leading, .top])
            
            Text("Wano 📍")
                .font(.system(size: 16))
                .padding(.leading)
                .padding(.top, 2)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView()
                
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
