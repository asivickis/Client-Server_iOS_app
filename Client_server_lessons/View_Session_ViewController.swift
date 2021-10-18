//
//  View_Session_ViewController.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 18/10/2021.
//

import UIKit

class View_Session_info_ViewController: UIViewController {
    
    @IBOutlet weak var token_Label: UILabel!
    @IBOutlet weak var userID_Label: UILabel!
    
    let session = Session.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        token_Label.text = session.token
        userID_Label.text = String(session.userID)
    }
    
}
