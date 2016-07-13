protocol PetApi {
    //will get all pets and inform the callback
    func getAll(completion: (pets: [Pet]) -> Void) -> Void
}
