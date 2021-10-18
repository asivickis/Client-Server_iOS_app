//
//  ViewController.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 18/10/2021.
//

import UIKit

class Send_Session_ViewController: UIViewController {
    
    @IBOutlet weak var token_TextField: UITextField!
    
    @IBOutlet weak var userID_TextField: UITextField!
    
    let session = Session.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Send_Action(_ sender: Any) {
        
        guard
        let userString = userID_TextField.text,
        let user = Int(userString),
        let token = token_TextField.text
        else {
            return
        }
        
        session.userID = user
        session.token = token
        
    }
}
 
