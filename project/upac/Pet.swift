import Foundation


class Pet {

    var name   : String
    var breed  : String
    var age    : Age
    var gender : Gender
    var size   : Size
    
    init(name: String, breed:String, age:Age, gender: Gender, size:Size){
        self.name = name
        self.age = age
        self.breed = breed
        self.gender = gender
        self.size = size
    }
    
    enum Age : Int{
        case baby = 0
        case young
        case adult
        case senior
        
        var friendlyName: String{
            switch self {
            case baby:
                return "Bebê"
            case young:
                return "Jovem"
            case adult:
                return "Adulto"
            case senior:
                return "Velhinho"
            }
        }
    }
    
    enum Gender : Int{
        case male = 0
        case female
        
        var friendlyName: String{
            switch self {
            case male:
                return "Macho"
            case female:
                return "Fêmea"
            }
        }
    }
    
    enum Size : Int{
        //11 kg or less
        case small = 0
        //12-27 kg
        case medium
        //28-45 kg
        case large
        //46 kg or more
        case xlarge
        
        var friendlyName:  String{
            switch self {
                case .small:
                    return "Porte Pequeno"
                case .medium:
                    return "Porte Médio"
                case .large:
                    return "Porte Grande"
                case .xlarge:
                    return "Porte Extra-Grande"
            }
        }
    }
    
}