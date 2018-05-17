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
    
    func SetPassword(password: String) {
        
        if password == ""
        {
            print("Please enter your password: ")
            self.password = readLine()!
        } else {
            self.password = name;
        }
    }
    
    func VerifyPassword(password: String) -> User? {
        
        if self.password == password
        {
            return self
        }else{
            print("Password wrong");
            return nil;
        }
    }
    
    func SetEmail(email: String) {
        if email == ""
        {
            print("Please enter your email: ")
            self.email = readLine()!
        } else {
            self.email = email;
        }
    }
    
    func SetPhone() {
        
        if self.phone == 0
        {
            print("Please enter your phone number: ")
            let tempInt = readLine()
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
            let tempInt = readLine()
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
        user.friendList.append(self);
    }
    
    func SetOnline(online: Bool){
        self.isOnline = online;
    }
}
















class Post {
    private var title: String
    private var content: String
    private var comments: Array<Comments> = []
    private var published: Date = Date()
    //private var like: Array<Likes>
    //private var sharedPost: Post?
    
    
    init(title: String, content: String /*like: Array<Likes>, sharedPost: Post*/ ) {
        self.title = title
        self.content = content
        /*self.comments = comments
        self.published = published*/
       // self.like = like
       // self.sharedPost = sharedPost
    }
    func EditPost(title: String, content: String){
        
    }
    func DeleteComment(comment: Comments) {
        
    }
    func MakeComment(post: Post, user: User, content: String){
    
    }
    func  GetPost() -> String{
        var postString: String = "";
        postString += title + "\n";
        postString += "Date: \(published)\n";
        postString += "\(content)\n\n";
        postString += "Comments: \(comments)\n";
        return postString;
    }
       
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
    func MakePost(){
        print("Please input title");
        if let userInputTitle = readLine(){
            print("Please input content")
            if let userInputContent = readLine(){
                let newPost = Post(title: userInputTitle, content: userInputContent);
                posts.append(newPost);
            }
        }
    }
    func DeletePost(){
        for i in 0..<posts.count {
            print("\(i+1): \(posts[i].GetTitle())");
        }
        print("Please inout number that represents the post that should be deleted:")
        if let userChoice = readLine(){
            if var IntUserChoice = Int(userChoice){
                if IntUserChoice<posts.count && IntUserChoice >= 0{
                    IntUserChoice -= 1
                    var userCorrectConfirm = false;
                    print("\nYou are about to delete:\n\(posts[IntUserChoice].GetTitle())\nWith the content of:\n\(posts[IntUserChoice].GetContent())\n\nAre you sure Y/N?: ", terminator: "");
                    while !userCorrectConfirm{
                        if let userConfirm = readLine(){
                            switch userConfirm.uppercased(){
                            case "Y":
                            posts.remove(at: (IntUserChoice));
                            userCorrectConfirm = true;
                            print("Post deleted");
                            case "N":
                                userCorrectConfirm = true;
                                print("Deletion aborted");
                            default:
                                print("Selection not recognized\nAre you sure Y/N?: ");
                            }
                        }
                    }
                }
            }
        }
        /*for i in 0..<posts.count {
            if posts[i] === post{
                posts.remove(at: i);
            }
        }*/
    }
    func ShowPosts() -> Void {
        print("\n\n\n\nShowing posts");
        for post in posts{
            print(post.GetPost());
        }
    }
    func ReturnUser() -> User {
        return user;
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
        let newComment = CommentChat(user: myApp.userObj, content: content, published: Date());
        self.comments.append(newComment);
    }
}













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
        for chat in myApp.oldChats {
            if chat.CheckUserInChat(person: myApp.userObj) && chat.CheckUserInChat(person: friend){
                return chat;
            }
        }
        
        // Creates an empty old chat between User A and currentUser
        let newChat = PastChat();
        newChat.AddUser(newUser: myApp.userObj);
        newChat.AddUser(newUser: friend);
        myApp.oldChats.append(newChat);
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
                \n\n\nPlease choose a friend to write with by writing part of users name.
            Or write Q and hit enter to quit.\n
            """);
            
            let friendList: [User] = myApp.userObj.ShowFriendList();
            self.ShowAvailable(friends: friendList);
            
            print("Part of users name: ", terminator: "");
            
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
                                
                                    print("Did you want to chat with \(user.GetName())? Y/N: ", terminator: "");
                                    if let selection = readLine(){
                                        switch selection.uppercased() {
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









class BasicFriendPopulation {

    func FindUser(email: String) -> User?{
        for user in myApp.userDatabase{
            if user.GetEmail() == email{
                return user;
            }
        }
        return nil;
    }

    func AddBasicFriends(){
        /**
         Chat is called by making a call to myOnlineBox.DisplayOnlineBox
         While the OnlineBox is active the focus in regards to CLI is kept there
         */
        
        
        var friend1 = User();
        var friend2 = User();
        var friend3 = User();
        var friend4 = User();
        if !myApp.onlyAddBasicFriendsOnce{
            friend1.SetName(name: "George");
            friend1.SetEmail(email: "George@hotdata.dk");
            friend1.SetPassword(password: "George");
            friend1.SetOnline(online: true);
        
            friend2.SetName(name: "Per");
            friend2.SetPassword(password: "Per");
            friend2.SetEmail(email: "Per@hotdata.dk");
            friend2.SetOnline(online: true);
            
            friend3.SetName(name: "Paul");
            friend3.SetPassword(password: "Paul");
            friend3.SetEmail(email: "Paul@hotdata.dk");
            friend3.SetOnline(online: false);
        
            friend4.SetName(name: "Louise");
            friend4.SetPassword(password: "Louise");
            friend4.SetEmail(email: "Louise@hotdata.dk");
            friend4.SetOnline(online: false);
        }else{
            friend1 = FindUser(email: "George@hotdata.dk")!;
            friend2 = FindUser(email: "Per@hotdata.dk")!;
            friend3 = FindUser(email: "Paul@hotdata.dk")!;
            friend4 = FindUser(email: "Louise@hotdata.dk")!;
        }
        
        /*
        var friend2 = User()
        friend2.name = "Paul";
        
        
        var friend3 = User()
        friend3.name = "Per";
        */
        myApp.userObj.AddToFriendList(user: friend1);
        myApp.userObj.AddToFriendList(user: friend2);
        myApp.userObj.AddToFriendList(user: friend3);
        myApp.userObj.AddToFriendList(user: friend4);
        
        if !myApp.onlyAddBasicFriendsOnce{
            
            myApp.userDatabase.append(friend1);
            myApp.userDatabase.append(friend2);
            myApp.userDatabase.append(friend3);
            myApp.userDatabase.append(friend4);
            myApp.onlyAddBasicFriendsOnce = true;
        }
        
        /*myApp.userObj.AddToFriendList(friend2);
        myApp.userObj.AddToFriendList(friend3);
        */

    }
    
}

    


class MainInitializer{
    // An array of oldChats
    var oldChats: [PastChat] = [];
    
    var profileDatabase: [ProfilePage] = [];
    
    var userDatabase: [User] = [];
    
    var userObj: User = User();

    var onlyAddBasicFriendsOnce = false;

    func MainInterface(){
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
                        1 - Show posts
                        2 - Make post
                        3 - Delete post
                        4 - Show chatbox
                    """);
            
            if let userInput = readLine() {
                userChoice = userInput.uppercased();
                switch userChoice {
                case "Q":
                    break;
                case "1":
                    userProfilepage.ShowPosts();
                case "2":
                    userProfilepage.MakePost();
                case "3":
                    userProfilepage.DeletePost();
                case "4":
                    let myOnlineBox = OnlineBox();
                    myOnlineBox.DisplayOnlineBox()
                default:
                    print("Selection not recognized");
                }
            }
        }
    }


    func Main(){
        
        
        
        
        
        //Login

        let isLoggedIn = false
        
        //var waitingUsername = false
        //var waitingPassword = false

        var isQuit = false;
        while isQuit == false {
            if isLoggedIn == false {
                print("""
                    \n\n\n\tQ - Quit
                    1 - Log på
                    2 - Opret konto
                """);
        
                var loginPage = "";
                if let userChoice = readLine() {
                    loginPage = userChoice.uppercased();
                }
                switch loginPage {

                    case "1":
                    print("Email: ", terminator: "");
                    if let userInput = readLine(){
                        for user in userDatabase{
                            if user.GetEmail() == userInput {
                                print("Password: ", terminator: "");
                                if let userPass = readLine(){
                                    if let userObjTemp = user.VerifyPassword(password: userPass){
                                        userObj = userObjTemp;
                                        MainInterface();
                                    }
                                }
                            }
                        }
        
                    }
        
                    case "2":
                    print("Register an account!")
                    userObj = User();
                    userObj.SetName(name: "");
                    userObj.SetAge();
                    userObj.SetEmail(email: "");
                    userObj.SetPhone();
                    userObj.SetPassword(password: "");
                    userDatabase.append(userObj);
                    let myBasicFriends = BasicFriendPopulation();
                    myBasicFriends.AddBasicFriends();
                    MainInterface();
        
        
                    case "Q":
                    print("Quitting");
                    isQuit = true;
        
                default:
                    print("Selection not recognized");
                }
            }
        }
    }
}


let myApp = MainInitializer();
myApp.Main();


