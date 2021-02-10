//
//  NotificationCell.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = false
    
    var body: some View {
        HStack {
            Image("oden")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            Text("oden")
                .font(.system(size: 16, weight: .semibold)) + Text(" started following you")
                .font(.system(size: 16))
            
            Spacer()
            
            if showPostImage {
                Image("oden")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .padding(.trailing)
            } else {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 16, weight: .semibold))
                })
            }
            
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
