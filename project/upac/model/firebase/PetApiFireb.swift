struct PetApiFireb: PetApi {

    func getAll(completion: (pets: [Pet]) -> Void) {
        //todo: should be something like an asynchronously call to Firebase
        let mocked: [Pet] = [
            PetFireb(name: "Michel",
                     breed: "Husk",
                     age: .baby,
                     gender: .male,
                     size: .small),
            PetFireb(name: "Marcele",
                     breed: "Bulldog",
                     age: .young,
                     gender: .female,
                     size: .large),
            PetFireb(name: "Merlin",
                     breed: "Terrier",
                     age: .senior,
                     gender: .male,
                     size: .medium)]
        completion(pets: mocked)
    }

}
