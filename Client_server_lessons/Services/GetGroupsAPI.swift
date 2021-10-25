//
//  GetGroupsAPI.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import Foundation
import Alamofire

struct Groups {
    
}

final class GroupsAPI {
    
    let basedURL = "https://api.vk.com/method"
    let token = Session.shared.token
    let userID = Session.shared.userID
    let version = "5.81"
    
    func getGroups(completion: @escaping([Groups])->()) {
        let method = "/groups.get"
        
        let param : Parameters = [
            "user_id": userID,
            "extended": 1,
            "count": 5,
            "access token": token,
            "v": version
        ]
        
        let url = basedURL + method
        
        AF.request(url, method: .get, parameters: param).responseJSON { response in
            print(response.value)
        }
    }
    
}
