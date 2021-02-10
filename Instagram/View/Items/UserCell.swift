//
//  UserCell.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("oden")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("oden")
                    .font(.system(size: 16, weight: .semibold))
                Text("Kozuki Oden")
                    .font(.system(size: 16))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
