import UIKit
import PlaygroundSupport

//Первый вариант с NSCoding
class User:NSObject, NSCoding {
    
    var name: String!
    var email: String!
    
    required convenience init(coder decoder: NSCoder) {
        self.init()
        self.name = (decoder.decodeObject(forKey: "name") as! String)
        self.email = (decoder.decodeObject(forKey: "email") as! String)
    }
    
    convenience init(name: String, email: String) {
        self.init()
        self.name = name
        self.email = email
    }
    func encode(with coder: NSCoder) {
        if let name = name { coder.encode(name, forKey: "name") }
        if let email = email { coder.encode(email, forKey: "email") }
    }
}
var user = [User]()
user.append(User(name: "Bart", email: "bart@simpson.com"))
user.append(User(name: "Lisa", email: "lisa@simpson.com"))

let userData = try NSKeyedArchiver.archivedData(withRootObject: user, requiringSecureCoding: false)
UserDefaults.standard.set(userData, forKey: "userData")

if let loadedData = UserDefaults.standard.data(forKey: "userData") {
    if let loadedUser = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(loadedData) as? [User] {
        print(loadedUser[0].name!)// Bart
        print(loadedUser[1].email!)// lisa@simpson.com
    }
}


//Второй вариант с Codable
class User2: Codable {
    var name: String
    var email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}
var user2 = [User2]()
user2.append(User2(name: "Bart", email: "bart@simpson.com"))
user2.append(User2(name: "Lisa", email: "lisa@simpson.com"))

if let userData2 = try? JSONEncoder().encode(user2) {
    UserDefaults.standard.set(userData2, forKey: "userData2")
}

if let loadedData2 = UserDefaults.standard.data(forKey: "userData2") {
    if let loadedUser2 = try? JSONDecoder().decode([User2].self, from: loadedData2) {
        print(loadedUser2[0].name)// Bart
        print(loadedUser2[1].email)// lisa@simpson.com
    }
}


/*Объект по умолчанию должен быть list—that, т.е.
 NSData, NSString, NSNumber, NSDate, NSArray, или NSDictionary.
 Если вы хотите сохранить какой-либо другой тип объекта,
 вы обычно должны заархивировать его, чтобы создать экземпляр NSData*/

/*
 ○ Объект может быть напрямую сохранен в user defaults, если мы напишем для него соответствие NSCoding.

 ● Объект может быть сохранен в user defaults, если мы соответствуем его NSCoding или Codable и затем сохраняем его как Data.

 ○ Нет, только объекты списка свойств (property-list) могут быть сохранены в user defaults.
 */
