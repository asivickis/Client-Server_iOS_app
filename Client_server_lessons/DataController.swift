//
//  DataController.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import UIKit
import Alamofire
import SwiftUI

class DataViewController : UITableViewController {
    
    let friendService = FriendsAPI()
    let photoService = PhotoAPI()
    let groupService = GroupsAPI()
    let searchGroupService = SearchGroupAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendService.getFriends { friends in
            print("Get friends")
        }
        photoService.getPhotos { photos in
            print("Get photos")
        }
        groupService.getGroups { groups in
            print("Get groups")
        }
        searchGroupService.getSGroups { sgroups in
            print("get search groups")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
