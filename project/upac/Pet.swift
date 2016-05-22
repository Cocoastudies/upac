import Foundation


class Pet {

    var name   : String
    var age    : Double
    var breed  : String
    var gender : Int
    var size   : Int
    
    init(name: String, age:Double, breed:String, gender: Int, size:Int){
        self.name = name
        self.age = age
        self.breed = breed
        self.gender = gender
        self.size = size
    }    
    
}