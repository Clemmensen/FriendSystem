//
//  main.swift
//  FriendSystem
//
//  Created by Maria Clemmensen on 16/05/2018.
//  Copyright © 2018 Maria Clemmensen. All rights reserved.
//

import Foundation









class User {
    
    private var name: String
    private var email: String
    private var phone: Int
    private var age: Int
    private var friendList: [User] = [];
    private var isUserVerified: Bool
    private var isOnline: Bool = false;
    private var password: String

    
    init() {
        name = ""
        email = ""
        phone = 0
        age = 0
        friendList = []
        isUserVerified = false
        password = ""
    }
    func SetName(name: String) {
        
        if name == ""
        {
            print("Please enter your name: ")
            self.name = readLine()!
        } else {
            self.name = name;
        }
    }
    func SetEmail() {
        
        if self.email == ""
        {
            print("Please enter your email: ")
            User.init().email = readLine()!
        }
    }
    
    func SetPhone() {
        
        if self.phone == 0
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
        
        if self.age == 0
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
        return "age";
    }
    func GetPgone() -> String{
        return "phone";
    }
    func GetEmail() -> String{
        return email;
    }
    
    
    func AddToFriendList(user: User){
        self.friendList.append(user);
    }
    
    func SetOnline(online: Bool){
        self.isOnline = online;
    }
}





var userDatabase: [User] = [];

var userObj: User = User();

class Post {
    private var title: String
    private var content: String
    private var comments: Array<Comments>
    private var published: Date
    //private var like: Array<Likes>
    //private var sharedPost: Post?
    
    
    init(title: String, content: String, comments: Array<Comments>, published: Date /*like: Array<Likes>, sharedPost: Post*/ ) {
        self.title = title
        self.content = content
        self.comments = comments
        self.published = published
       // self.like = like
       // self.sharedPost = sharedPost
    }
    func EditPost(title: String, content: String){
        
    }
    func DeleteComment(comment: Comments) {
        
    }
    func MakeComment(post: Post, user: User, content: String){
        
    }
    func  GetPost(title: String, content: String, published: Date, comments: Array<Comments>){
       
        func GetTitle() -> String {
            return title;
        }
        func GetContent() -> String {
            return content;
        }
        func GetPublished() -> Date {
            return published;
        }
        func GetComments() -> Array<Comments>{
            return comments;
        }
    }
    //func LikePost(user: User, type: LikeType){}
    //func SharePost(post: Post){}
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
    private var user: User
    private var post: Post
    private var content: String
    private var published: Date
    private var editedDate: Date
    
    init(user: User, post: Post, content: String, published: Date, editedDate: Date) {
        self.user = user
        self.post = post
        self.content = content;
        self.published = published;
        self.editedDate = editedDate;
        
    }
  //  func EditComment(content: String) -> Void {}
    
    func CreatetComment(){
  //      var viewPost: String = Post.MakeComment(<#T##Post#>);
    }
    func GetCommentPost() -> String{
        return "\(content) - \(published) - \(editedDate)";
    }
}

class ProfilePage {
    //  private var imageUrl: String?
    private var posts: Array<Post> = []
    private var user: User;
    //private var birthDay: Date?
    
    init(/*imageUrl: String?*/user: User) {
        self.user = user;
        //self.imageUrl = imageUrl
        //self.posts = posts
        //self.birthDay = birthDay
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
    /*func GetBirthDay() -> Date{
     return birthDay!;
     }*/
    func SetBirthDay(date: Date) -> Void {
        
    }
    func MakePost(title: String, content: String, published: Date){
        
        
    }
    func DeletePost(post: Post){
        
    }
    func ShowPosts() -> Void {
        print("Showing posts");
    }
    func ReturnUser() -> User {
        return user;
    }
}


var profileDatabase: [ProfilePage] = [];




    







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
        return "\n\(user.GetName()) wrote at \(published):\n\(content)"
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
            
            if let userChoice = readLine()?.uppercased(){
                chatChoice = userChoice;
                
                if chatChoice != "Q" {
                    
                    var isBreakOut = false;
                    /// Shows all friends that matches the query and asks if user meant that person
                    for user in friendList {
                        
                        var userCorrectSelection = false;
                        if !isBreakOut {
                            if(user.GetName().uppercased().contains(chatChoice)){
                                
                                /// This makes sure that a Y/N confirmation is made
                                while !userCorrectSelection{
                                
                                    print("Did you want to chat with \(user.GetName())? Y/N");
                                    if let selection = readLine()?.uppercased(){
                                        switch selection {
                                        case "Y":
                                            StartChatWith(friend: user);
                                            userCorrectSelection = true;
                                            isBreakOut = true;
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
    }
    
    func ShowAvailable(friends: [User]){
        for user in friends {
            print((user.IsUserOnline() ? "Online: " : "Offline: ") + "\(user.GetName())");
        }
    }
    
    func StartChatWith(friend: User){
        let newChatBox = ChatBox(user: friend);
        let chat = newChatBox.chatArchive(friend: friend);
        var chatChoice = "";
        while chatChoice != "Q" {
            
            print("\n\n");
            chat.ShowComments();
            print("""
                Q and enter to quit the chat with \(friend.GetName())
                Or write a message and press enter to send.
            """);
            if let userInput = readLine() {
                chatChoice = userInput;
                if chatChoice.uppercased() != "Q" {
                    newChatBox.makeComment(content: userInput, currentChat: chat);
                } else {
                    chatChoice = "Q";
                }
            }
        }
    }
}





func ShowChatInterface(){
    /**
     Chat is called by making a call to myOnlineBox.DisplayOnlineBox
     While the OnlineBox is active the focus in regards to CLI is kept there
     */
    var myOnlineBox = OnlineBox();
    
    var friend1 = User();
    friend1.SetName(name: "George");
    friend1.SetOnline(online: true);
    
    var friend2 = User();
    friend2.SetName(name: "Per");
    friend2.SetOnline(online: true);
    
    var friend3 = User();
    friend3.SetName(name: "Paul");
    friend3.SetOnline(online: false);
    
    var friend4 = User();
    friend4.SetName(name: "Louise");
    friend4.SetOnline(online: false);
    
    /*
    var friend2 = User()
    friend2.name = "Paul";
    
    
    var friend3 = User()
    friend3.name = "Per";
    */
    userObj.AddToFriendList(user: friend1);
    userObj.AddToFriendList(user: friend2);
    userObj.AddToFriendList(user: friend3);
    userObj.AddToFriendList(user: friend4);
    /*userObj.AddToFriendList(friend2);
    userObj.AddToFriendList(friend3);
    */
    myOnlineBox.DisplayOnlineBox()

}


    

//Login

var isLoggedIn = false
var waitingUsername = false
var waitingPassword = false

var isQuit = false;
while isQuit == false {
    if isLoggedIn == false {
        print("""
            Q - Quit
            1 - Log på
            2 - Opret konto
        """);
        
        var loginPage = "";
        if let userChoice = readLine() {
            loginPage = userChoice.uppercased();
        }
        switch loginPage {

            case "1":
                print("email: ", terminator: "");
            /*if readLine() == .email {
                print("Password: ")
            } else if readLine() != User.init().email {
                    print("Please try again!")
            }
            if readLine() == User.init().password {
                print("Succes!")
                isLoggedIn = true
            }*/

            case "2":
            print("Register an account!")
            userObj = User();
            userObj.SetName(name: "");
            userObj.SetAge();
            userObj.SetEmail();
            userObj.SetPhone();
            userDatabase.append(userObj);
            
            print("You are now logged in");
            var userProfilepage: ProfilePage = ProfilePage(user: userObj);
            var hasPage = false;
            for page in profileDatabase {
                if page.ReturnUser() === userObj {
                    userProfilepage = page;
                    hasPage = true;
                }
            }
            if !hasPage{
                profileDatabase.append(userProfilepage);
            }
            
            var userChoice = "";
            while userChoice != "Q" {
                print("""
                    \n\n\n\tQ - Quit
                    1 - Vis posts
                    2 - Vis chatbox
                """);
                
                if let userInput = readLine() {
                    userChoice = userInput.uppercased();
                    switch userChoice {
                    case "Q":
                        break;
                    case "1":
                        userProfilepage.ShowPosts();
                    case "2":
                        ShowChatInterface();
                    default:
                        print("Selection not recognized");
                    }
                }
            }
            
            case "Q":
            print("Quitting");
            isQuit = true;
            
        default:
            print("Selection not recognized");
        }
    }
}

