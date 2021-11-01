//
//  DataController.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 25/10/2021.
//

import UIKit

class DataViewController : UITableViewController {
    
    let friendService = FriendsAPI()
    let photoService = PhotoAPI()
    //    let groupService = GroupsAPI()
    //    let searchGroupService = SearchGroupAPI()
    
    var friends : [Friend] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendService.getFriends { [weak self] friends in
            self?.friends = friends
            self?.tableView.reloadData()
        }
        /*
        photoService.getPhotos { photos in
            print("Get photos")
        }
        
        groupService.getGroups { groups in
            print("Get groups")
        }
        searchGroupService.getSGroups { sgroups in
            print("get search groups")
        } */
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let friend = friends[indexPath.row]
        cell.textLabel?.text = friend.fullName
        
        return cell
    }
}
