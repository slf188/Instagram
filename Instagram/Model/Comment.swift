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
    
    var timeStampString: String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: timestamp.dateValue(), to: Date()) ?? ""
    }
}

