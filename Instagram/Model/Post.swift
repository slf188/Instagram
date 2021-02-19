//
//  Post.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/18/21.
//

import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerUid: String
    let ownerUsername: String
    let caption: String
    let imageUrl: String
    let likes: Int
    let timestamp: Timestamp
    let ownerImageUrl: String
}
