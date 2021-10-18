//
//  Session.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 18/10/2021.
//

import Foundation

final class Session {
    
    private init() {}
    
    static let shared = Session()
    
    var token: String = ""
    var userID: Int = 0
}
