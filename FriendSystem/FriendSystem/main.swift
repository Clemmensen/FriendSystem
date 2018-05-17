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
    var friendList: [User] = [];
    var isUserVerified: Bool
    var isOnline: Bool = false;

    
    init() {
        name = ""
        email = ""
        phone = 0
        age = 0
        friendList = []
        isUserVerified = false
    }
    
    func ShowFriendList() -> [User]{
        return friendList;
    }
    
    func IsUserOnline() -> Bool{
        return isOnline;
    }
    
    func GetName() -> String{
        return name;
    }
    func GetAge() -> String{
        return age;
    }
    func GetPgone() -> String{
        return phone;
    }
    func GetEmail() -> String{
        return email;
    }
    

}

func SetName() {
    
    if User.init().name == ""
    {
        print("Please enter your name: ")
        User.init().name = readLine()!
    }
}
func SetEmail() {
    
    if User.init().email == ""
    {
        print("Please enter your name: ")
        User.init().email = readLine()!
    }
}

func SetPhone() {
    
    if User.init().phone == 0
    {
        print("Please enter your phone number: ")
        var tempInt = readLine()
        let chosenPhone = Int(tempInt!)
        let optionalInt : Int? = chosenPhone
        if var optionalInt = chosenPhone {
            optionalInt = User.init().phone
        }
    }
    
}

func SetAge() {
    
    if User.init().age == 0
    {
        print("Please enter your age: ")
        var tempInt = readLine()
        let chosenPhone = Int(tempInt!)
        let optionalInt : Int? = chosenPhone
        if var optionalInt = chosenPhone {
            optionalInt = User.init().age
        }
    }
}



// Creates an object of user
var userObj: User = User();




class ProfilePage {
    private var user: [User] = []
  //  private var imageUrl: String?
    private var posts: Array<Post>
    private var birthDay: Date?
    
    init(user: [User], /*imageUrl: String?*/ posts: Array<Post>, birthDay: Date) {
        //self.imageUrl = imageUrl
        self.posts = posts
        self.birthDay = birthDay
    }
   /* func SetImageUrl(url: String) -> Void {
        if ProfilePage.init(user: User, imageUrl: String?, posts: Array<Post>, birthDay: Date()).imageUrl = String {
            var temp = readLine()
            let choseImage = String(temp!)
            let optionalPicture: String? = choseImage
            if var optionalPicture = choseImage {
                optionalPicture = ProfilePage.init().imageUrl
            }
        }
    }*/
 //   func GetImageUrl() -> String {
 //       return imageUrl
 //   }
    func GetBirthDay() -> Date{
        return birthDay!;
    }
    func SetBirthDay(date: Date) -> Void {
        
    }
    func MakePost(title: String, content: String, published: Date){
        
            
    }
    func DeletePost(post: Post){
        
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
    
    
    init(title: String, content: String, comments: Array<Comments>, published: Date, like: Array<Likes>, sharedPost: Post ) {
        self.title = title
        self.content = content
        self.comments = comments
        self.published = published
        self.like = like
        self.sharedPost = sharedPost
    }
    func EditPost(title: String, content: String){
        
    }
    func DeleteComment(comment: Comments) {
        
    }
    func MakeComment(post: Post, user: User, content: String){
        
    }
    func  GetPos(title: String, content: String, published: Date, comments: Array<Comments>){
        
    }
    func LikePost(user: User, type: LikeType){
        
    }
    func SharePost(post: Post){
        
    }
}
// Likes lavet med enum
    class Likes {
        private var user: [User] = []
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
    private var user: [User] = []
    private var post: [Post] = []
    private var content: String
    private var published: Date
    private var editedDate: Date
    
    init(user: User, post: Post, content: String, published: Date, editedDate: Date) {
        self.content = content
        self.published = published
        self.editedDate = editedDate
        
    }
    func EditComment(content: String) -> Void {
    
    }
    func CreatetCommont(user: User, post: Post, content: String){
        
    }
    func Getcomment(user: User, post: Post, content: String) -> Void {
        
    }
}






/*
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
}*/





/// A single entry / comment in the chat between users
class CommentChat {
    private let user: User;
    private let content: String;
    private let published: Date;
    init(user: User, content: String, published: Date){
        self.user = user;
        self.content = content;
        self.published = published;
    }
    
    func GetComment() -> String{
        return "\(published) - \(content)"
    }
}





/// A pervious chat between users
class PastChat {
    private var comments: [CommentChat] = [];
    private var users: [User] = [];
    
    func ShowComments(){
        for comment in comments {
            print(comment.GetComment());
        }
    }
    
    func CheckUserInChat(person: User) -> Bool{
        for user in self.users {
            if user === person {
                return true;
            }
        }
        return false;
    }
    
    func AddUser(newUser: User){
        // Check if user is already in list
        var isUserInList = false;
        for user in self.users {
            if user === newUser {
                isUserInList = true;
            }
        }
        
        // Reacts according to whether user exists in the list
        if isUserInList{
            print("An error has occured, the user is already a member of the chat");
        } else {
            self.users.append(newUser);
        }
        
    }
    
    func AddComment(content: String){
        let newComment = CommentChat(user: userObj, content: content, published: Date());
        self.comments.append(newComment);
    }
}

// An array of oldChats
var oldChats: [PastChat] = [];






/// A box for chatting with one or more users
class ChatBox {
    private var user: User;
    //private var smiley: [Smiley] = [];
    
    init (user: User){
        self.user = user;
    }
    
    //func makeComment(content: String, smiley: Smiley?){
    func makeComment(content: String, currentChat: PastChat){
        currentChat.AddComment(content: content)
    }
    
    func chatArchive(friend: User) -> PastChat{
        for chat in oldChats {
            if chat.CheckUserInChat(person: userObj) && chat.CheckUserInChat(person: friend){
                return chat;
            }
        }
        
        // Creates an empty old chat between User A and currentUser
        let newChat = PastChat();
        newChat.AddUser(newUser: userObj);
        newChat.AddUser(newUser: friend);
        oldChats.append(newChat);
        return newChat;
    }
    
}



/// Chat entry point, Chat is called by making a call to myOnlineBox
class OnlineBox {
    
    func DisplayOnlineBox(){
        
        /// Helps keep the chat running (onlineBox open)
        var chatChoice = "";
        while(chatChoice != "Q"){
            print("""
                Please choose a friend to write with by writing part of users name.
                Or write Q and hit enter to quit.
            """);
            
            let friendList: [User] = userObj.ShowFriendList();
            self.ShowAvailable(friends: friendList);
            
            if let userChoice = readLine(){
                chatChoice = userChoice;
                
                if chatChoice != "Q" {
                    
                    /// Shows all friends that matches the query and asks if user meant that person
                    for user in friendList {
                        if(user.name.contains(chatChoice)){
                            
                            /// This makes sure that a Y/N confirmation is made
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
    
    func ShowAvailable(friends: [User]){
        for user in friends {
            print(user.IsUserOnline() ? "Online: " : "Offline: " + "\(user.GetName)");
        }
    }
    
    func StartChatWith(friend: User){
        let newChatBox = ChatBox(user: friend);
        let chat = newChatBox.chatArchive(friend: friend);
        var chatChoice = "";
        while chatChoice != "Q" {
            
            chat.ShowComments();
            print("""
                Q and enter to quit the chat with \(friend.name)
                Or write a message and press enter to send.
            """);
            if let userInput = readLine()?.uppercased() {
                chatChoice = userInput;
                if chatChoice != "Q" {
                    newChatBox.makeComment(content: userInput, currentChat: chat);
                }
            }
        }
    }
}



/**
 Chat is called by making a call to myOnlineBox.DisplayOnlineBox
 While the OnlineBox is active the focus in regards to CLI is kept there
*/
var myOnlineBox = OnlineBox();
//myOnlineBox.DisplayOnlineBox();



