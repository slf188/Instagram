//
//  FeedCell.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: post.ownerImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text(post.ownerUsername)
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding([.leading, .bottom], 4)
            
            KFImage(URL(string: post.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 420)
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
            
            Text("\(post.likes) likes")
                .font(.system(size: 16, weight: .semibold))
                .padding(.leading, 4)
                .padding(.bottom, 2)
            
            HStack {
                Text(post.ownerUsername)
                    .font(.system(size: 16, weight: .semibold)) + Text(" \(post.caption)")
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

