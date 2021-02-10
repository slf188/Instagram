//
//  FeedCell.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("oden")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("oden")
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding([.leading, .bottom], 4)
            
            Image("wano")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 220)
                .clipped()
            
            HStack(spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                })
            }
            .padding(.leading, 4)
            .padding([.top, .bottom], 3)
            .foregroundColor(.black)
            
            Text("45 likes")
                .font(.system(size: 16, weight: .semibold))
                .padding(.leading, 4)
                .padding(.bottom, 2)
            
            HStack {
                Text("oden")
                    .font(.system(size: 16, weight: .semibold)) + Text(" Wano has its own warriors, the samurai, who are swordsmen so powerful that not even the Marines go near them.")
                    .font(.system(size: 16))
            }.padding(.horizontal, 4)
            
            Text("2d")
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 1)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
