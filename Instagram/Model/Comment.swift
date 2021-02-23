//
//  Comment.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/19/21.
//

import FirebaseFirestoreSwift
import Firebase

struct Comment: Identifiable, Decodable {
    let commentText: String
    @DocumentID var id: String?
    let timestamp: Timestamp
    let username: String
    let uid: String
    let postOwnerUid: String
    let profileImageUrl: String
    
}

