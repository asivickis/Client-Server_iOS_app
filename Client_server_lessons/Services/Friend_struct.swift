//
//  Friend_struct.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 28/10/2021.
//

import Foundation

struct Friend: Codable {
     let id: Int
     let lastName: String
     let firstName: String

     var fullName: String {
         firstName + lastName
     }

     enum CodingKeys: String, CodingKey {
         case id
         case lastName = "last_name"
         case firstName = "first_name"
     }
 }
