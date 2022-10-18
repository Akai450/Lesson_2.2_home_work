import Foundation

//Наследования
class Animal {
    var name: String
    var age: Int
    var sound: String
    
    init (name: String, age: Int, sound: String) {
        self.name = name
        self.age = age
        self.sound = sound
    }
    deinit {
        print("object deinitialised")
    }
    
    func voice() {
        print(self.sound)
    }
}
class Dog: Animal {
    override func voice() {
        print ("\(self.sound) - голос")
    }
}

var dog: Dog? = Dog(name: "Шарик", age: 1, sound: "Гав мазафака")
dog!.voice()
dog = nil
