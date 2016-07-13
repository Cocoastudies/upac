class PetViewModel {

    var name: String
    var size: String

    /// parse model to view model
    init(pet: Pet) {
        name = pet.name
        size = pet.size.friendlyName
    }
}
