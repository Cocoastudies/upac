protocol PetApi {
    /// get all pets and send them to completion
    func getAll(completion: (pets: [Pet]) -> Void) -> Void
}
