//
//  GetFriendsAPI.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import Foundation
import Alamofire
import SwiftyJSON


final class FriendsAPI {
    
    let baseURL = "https://api.vk.com/method"
    let token = Session.shared.token
    let userID = Session.shared.userID
    let version = "5.81"
    
    func getFriends(completion: @escaping([Friend])->()) {
        
        let method = "/friends.get"
        
        let parameters: Parameters = [
            "user_id": userID,
            "order": "name",
            "count": 10,
            "access_token": token,
            "v": version
        ]
        
        let url = baseURL + method
        
        AF.request(url, method: .get, parameters: parameters).responseJSON { response in
            
            print(response.value)
            
            guard let data = response.data else { return }
            debugPrint(response.data?.prettyJSON as Any)
            
            do {
                
                let itemsData = try JSON(data)["response"]["items"].rawData()
                let friends = try JSONDecoder().decode([Friend].self, from: itemsData)
                
                completion(friends)
                
            } catch {
                print(error)
            }
        }
    }
    
}
