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

class ProfilePage: user {
  private var user: user
  private var imageUrl: String?
    private var posts: Array<Post>;
  private var birthDay: Date?
    
    init(user: ) {
        <#statements#>
    }
}

class Post: ProfilePage {
    private var title: String
    private var content: String
    //private var comments: Array
    private var Published: Date
}


class Smiley {
    private var type: SmileyType;
    init(smiley: SmileyType){
        self.type = smiley;
    }
}

enum SmileyType {
    case SmileyFace, CoolSmiley, AngrySmiley, SleepySmiley, EvilSmiley, AngelSmiley;
}


class OnlineBox {
    private var friends: [User] = [];
    
    func ShowAvailable(){
        var friendList: [User] = User.ShowFriendList();
    }
    
    func StartChatWith(friend: User) {
        
    }
}


class ChatBox {
    private var user: User;
    private var content: String;
    private var smiley: [Smiley] = [];
    
    init (user: User, content: String){
        self.user = user;
        self.content = content;
        
    }
    
    func makeComment(content: String, smiley: Smiley){
        
    }
    
    func chatArchive(archive: PastChat){
        
    }
    
}



class CommentChat {
    private let user: User;
    private let content: String;
    private let published: Date;
    init(user: User, content: String, published: Date){
        self.user = user;
        self.content = content;
        self.published = published;
    }
    
    func GetComment(user: User, post: Post, content: String){
        
    }
}


class PastChat {
    private var comments: [CommentChat] = [];
    private var users: [User] = [];
    
    func ShowComments(){
        
    }
}

