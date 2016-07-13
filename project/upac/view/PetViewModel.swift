class PetViewModel {

    var name: String
    var size: String

    init(pet: Pet) {
        name = pet.name
        size = pet.size.friendlyName
    }
}
