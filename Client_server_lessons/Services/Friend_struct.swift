//
//  Friend_struct.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 28/10/2021.
//

import Foundation
import RealmSwift

class Friend: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var lastName: String
    @objc dynamic var firstName: String
    
    var fullName: String {
        firstName + lastName
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case lastName = "last_name"
        case firstName = "first_name"
    }
}
