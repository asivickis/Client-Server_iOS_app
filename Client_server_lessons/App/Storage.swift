//
//  Storage.swift
//  Client_server_lessons
//
//  Created by Aleksandrs Sivickis on 01/11/2021.
//

import UIKit
import RealmSwift

//Not in use, for next Lesson
/*
class User: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var userId: String = ""
    @objc dynamic var token: String = ""
}

class StorageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        useRealm()
    }
    
    func useRealm() {
        
        let user = User()
        user.name = "Kolobok"
        user.token = "12342345asefrsdf24323rsdffaasfd"
        user.userId = "1243524134"
        
        let migration = Realm.Configuration(schemaVersion: 2)
        let realm = try! Realm(configuration: migration)
        
        // 1 шаг - сохранение объекта в Realm
        realm.beginWrite()
        realm.add(user)
        try! realm.commitWrite()
        
        // 2 шаг - считываем объект
        let users = realm.objects(User.self)
        users.forEach { print($0.name, $0.token, $0.userId) }
        
    }
    
}*/
