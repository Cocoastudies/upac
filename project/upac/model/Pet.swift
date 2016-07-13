protocol Pet {

    var name: String {get set}
    var breed: String {get set}
    var age: Age {get set}
    var gender: Gender {get set}
    var size: Size {get set}

}

enum Age {
    case baby
    case young
    case adult
    case senior

    var friendlyName: String {
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

enum Gender {
    case male
    case female

    var friendlyName: String {
        switch self {
        case male:
            return "Macho"
        case female:
            return "Fêmea"
        }
    }
}

enum Size {
    /// 11 kg or less
    case small
    /// 12-27 kg
    case medium
    /// 28-45 kg
    case large
    /// 46 kg or more
    case xlarge

    var friendlyName: String {
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
