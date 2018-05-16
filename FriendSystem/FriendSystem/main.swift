//
//  main.swift
//  FriendSystem
//
//  Created by Maria Clemmensen on 16/05/2018.
//  Copyright © 2018 Maria Clemmensen. All rights reserved.
//

import Foundation

class User {
    
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
    
    if User.init().name == ""
    {
        print("Please enter your name: ")
        User.init().name = readLine()!
    }
}

class ProfilePage: User {
    private var user: User
    private var imageUrl: String?
    private var posts: Array<Post>
    private var birthDay: Date?
    
    init(user: User, imageUrl: String?, posts: Array<Post>, birthDay: Date) {
        self.user = user
        self.imageUrl = imageUrl
        self.posts = posts
        self.birthDay = birthDay
    }
    
    
}
// Start på profile
class Post: ProfilePage {
    private var title: String
    private var content: String
    private var comments: Array<Comments>
    private var published: Date
    
    init(title: String, content: String, comments: Array<Comments>, published: Date) {
        self.title = title
        self.content = content
        self.comments = comments
        self.published = published
    }
    
}
class Comments: Post {
    private var user: User
    private var post: Post
    private var content: String
    private var published: Date
    private var editedDate: Date
    
    init(user: User, post: Post, content: String, published: Date, editedDate: Date) {
        self.post = post
        self.content = content
        self.published = published
        self.editedDate = editedDate
        
    }
    
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

