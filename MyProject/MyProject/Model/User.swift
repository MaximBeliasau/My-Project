//
//  User.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import Foundation
import Firebase

struct User {
    let uidi: String
    let email: String
    
    init(user: Firebase.User) {
        self.uidi = user.uid
        self.email = user.email ?? ""
    }
}
