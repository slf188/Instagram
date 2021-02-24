//
//  FeedCell.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    
    @ObservedObject var viewModel: FeedCellViewModel
    
    var didLike: Bool {
        return viewModel.post.didLike ?? false
    }
    
    init(viewModel: FeedCellViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: viewModel.post.ownerImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text(viewModel.post.ownerUsername)
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding([.leading, .bottom], 4)
            
            KFImage(URL(string: viewModel.post.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 420)
                .clipped()
            
            HStack(spacing: 16) {
                Button(action: {
                    didLike ? viewModel.unlike() : viewModel.like()
                }, label: {
                    Image(systemName: didLike ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(didLike ? .red : .black)
                        .frame(width: 20, height: 20)
                })
                
                NavigationLink(destination: CommentsView(post: viewModel.post)) {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                }
                
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
            
            Text(viewModel.likeString)
                .font(.system(size: 16, weight: .semibold))
                .padding(.leading, 4)
                .padding(.bottom, 2)
            
            HStack {
                Text(viewModel.post.ownerUsername)
                    .font(.system(size: 16, weight: .semibold)) + Text(" \(viewModel.post.caption)")
                    .font(.system(size: 16))
            }.padding(.horizontal, 4)
            
            Text(viewModel.timeStampString)
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 1)
        }
    }
}

