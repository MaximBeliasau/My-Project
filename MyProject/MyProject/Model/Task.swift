//
//  Task.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import Foundation
import Firebase

struct Task {
    let title: String
    let userId: String
    let ref: DatabaseReference?
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    
    init?(snapshot: DataSnapshot) {
        guard let snapshotValue = snapshot.value as? [String: Any],
              let title = snapshotValue[Constants.titleKey] as? String,
              let userId = snapshotValue[Constants.userIdKey] as? String,
              let completed = snapshotValue[Constants.completedKey] as? Bool else { return nil}
        self.title = title
        self.userId = userId
        self.completed = completed
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> [String: Any] {
        [Constants.titleKey: title,
         Constants.userIdKey: userId,
         Constants.completedKey: completed]
    }
    
    private enum Constants {
        static let titleKey = "title"
        static let userIdKey = "userId"
        static let completedKey = "completed"
    }
    
}
