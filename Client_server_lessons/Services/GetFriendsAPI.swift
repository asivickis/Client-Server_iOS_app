//
//  GetFriendsAPI.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import Foundation
import Alamofire
import SwiftyJSON

struct Friends {
    
}

final class FriendsAPI {
    
    let basedURL = "https://api.vk.com/method"
    let token = Session.shared.token
    let userID = Session.shared.userID
    let version = "5.81"
    
    func getFriends(completion: @escaping([Friends])->()) {
        let method = "/friends.get"
        
        let param : Parameters = [
            "user_id": userID,
            "order": "name",
            "count": 10,
            "access token": token,
            "v": version
        ]
        
        let url = basedURL + method
        AF.request(url, method: .get, parameters: param).responseJSON { response in
            
            guard let data = response.data else { return }
            debugPrint(response.data?.prettyJSON as Any)

            do {
                
                let itemsData = try JSON(data)["response"]["items"].rawData()
                let friends = try JSONDecoder().decode([Friend4].self, from: itemsData)

                completion(friends)

            } catch {
                print(error)
            }
        }
        
        
    }
    
}
