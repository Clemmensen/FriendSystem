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

class ProfilePage {
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
    func SetImageUrl(url: String) -> Void {
        
    }
    func GetImageUrl() -> String {
        
    }
    func GetBirthDay() -> Date {
        
    }
    func SetBirthDay(date: Date) -> Void {
        
    }
    func MakePost(title: String, content: String, published: Date) -> Post {
        
    }
    func DeletePost(post: Post) -> Bool {
        
    }
    func ShowPosts(post: Array<Post>) -> Void {
        
    }
}
class Post {
    private var title: String
    private var content: String
    private var comments: Array<Comments>
    private var published: Date
    private var like: Array<Likes>
    private var sharedPost: Post?
    
    
    init(title: String, content: String, comments: Array<Comments>, published: Date) {
        self.title = title
        self.content = content
        self.comments = comments
        self.published = published
        
    }
    func EditPost(title: String, content: String) -> Bool {
        
    }
    func DeleteComment(comment: Comments) -> Bool {
        
    }
    func MakeComment(post: Post, user: User, content: String) -> Bool {
        
    }
    func  GetPos(title: String, content: String, published: Date, comments: Array<Comments>) -> String {
        
    }
    func LikePost(user: User, type: LikeType) -> Likes {
        
    }
    func SharePost(post: Post) -> Bool {
        
    }
}
    class Likes {
        private var user: User
        private var type: LikeType
        
        init(user: User, type: LikeType) {
            self.type = type
        }
        
    }
    
    enum LikeType {
        case ThumbsUp
        case ThumbsDown
        case Evil
        case Angel
    }
    
class Comments {
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
    func EditComment(content: String) -> Void {
    
    }
    func CreatetCommont(user: User, post: Post, content: String) -> Bool {
        
    }
    func Getcomment(user: User, post: Post, content: String) -> Void {
        
    }
}

/// Holds an enum that signals a smiley
class Smiley {
    private var type: SmileyType;
    init(smiley: SmileyType){
        self.type = smiley;
    }
}

/// The available types of smileys
enum SmileyType {
    case SmileyFace, CoolSmiley, AngrySmiley, SleepySmiley, EvilSmiley, AngelSmiley;
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



class OnlineBox {
    private var friends: [User] = [];
    
    func ShowAvailable(){
        var friendList: [User] = User.ShowFriendList();
        for i in friendList {
            print(i.isOnline ? "Online: " : "Offline: " + i.name);
        }
    }
    
    func StartChatWith(friend: User) {
        
    }
}




