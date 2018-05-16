//
//  main.swift
//  FriendSystem
//
//  Created by Maria Clemmensen on 16/05/2018.
//  Copyright © 2018 Maria Clemmensen. All rights reserved.
//

import Foundation

class user {
    
    var name: String
    var email: String
    var phone: Int
    var age: Int
    var friendList: Array<Any>
    var isUserVerified: Bool

    
    init() {
        name = ""
        email = ""
        phone = 0
        age = 0
        friendList = []
        isUserVerified = false
    }

}

func SetName() {
    
    if user.init().name == ""
    {
        print("Please enter your name: ")
        user.init().name = readLine()!
    }
}

