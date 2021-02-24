//
//  User.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/11/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var stats: UserStats?
    var isFollowed: Bool? = false
    var bio: String?
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}

struct UserStats: Decodable {
    var following: Int
    var posts: Int
    var followers: Int
}
