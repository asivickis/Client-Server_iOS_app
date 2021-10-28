//
//  GetPhotoAPI.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import Foundation
import Alamofire

struct Photo {
    
}

final class PhotoAPI {
    
    let basedURL = "https://api.vk.com/method"
    let token = Session.shared.token
    let userID = Session.shared.userID
    let version = "5.81"
    
    func getPhotos(completion: @escaping([Photo])->()) {
        let method = "/photos.get"
        
        let param : Parameters = [
            "user_id": userID,
            "album_id": "wall",
            "count": 5,
            "access token": token,
            "v": version
        ]
        print(token)
        let url = basedURL + method
        print(param)
        AF.request(url, method: .get, parameters: param).responseJSON { response in
            print(response.value)
        }
    }
    
}
