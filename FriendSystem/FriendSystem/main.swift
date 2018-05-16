//
//  main.swift
//  FriendSystem
//
//  Created by Maria Clemmensen on 16/05/2018.
//  Copyright © 2018 Maria Clemmensen. All rights reserved.
//

import Foundation

print("Hello, World!")


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

