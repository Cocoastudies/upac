class PetFireb: Pet {
    var name: String
    var breed: String
    var age: Age
    var gender: Gender
    var size: Size

    //todo: should receive something like a FIRDataSnapshot
    init(name: String, breed: String, age: Age, gender: Gender, size: Size) {
        self.name = name
        self.age = age
        self.breed = breed
        self.gender = gender
        self.size = size
    }
}
