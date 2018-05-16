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
    func LikePost(user: User, type: LikeType) -> Like {
        
    }
    func SharePost(post: Post) -> Bool {
        
    }
    class Likes {
        private var user: User
    }
    
    
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
    func DisplayOnlineBox(){
        var chatChoice = "";
        while(chatChoice != "Q"){
            print("""
                Please choose a friend to write with by writing part of users name.
                Or write Q and hit enter to quit.
            """);
            if let userChoice = readLine(){
                chatChoice = userChoice;
                
                if chatChoice != "Q" {
                    var friendList: [User] = User.ShowFriendList();
                    
                    for user in friendList {
                        if(user.name.contains(chatChoice)){
                            
                            var userCorrectSelection = false;
                            while !userCorrectSelection{
                            
                                print("Did you want to chat with \(user.name)? Y/N");
                                if let selection = readLine()?.uppercased(){
                                    switch selection {
                                    case "Y":
                                        StartChatWith(friend: user);
                                        userCorrectSelection = true;
                                        break;
                                    case "N":
                                        userCorrectSelection = true;
                                        // Do nothing, let loop run
                                    default:
                                        print("Selection not recognized");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    func ShowAvailable(){
        var friendList: [User] = UserObj.ShowFriendList();
        for user in friendList {
            print(user.isOnline ? "Online: " : "Offline: " + user.name);
        }
    }
    
    func StartChatWith(friend: User){
        var tempChatBox = ChatBox(user: friend)
    }
}




