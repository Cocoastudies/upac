import UIKit

class PetDataSource: NSObject, UITableViewDataSource {

    var petApi: PetApi

    private var pets = [PetViewModel]()

    init(petApi: PetApi) {
        self.petApi = petApi
    }

    func fetchData(completion: () -> Void ) {
        petApi.getAll { pets in
            //map model to viewmodel
            self.pets = pets.map { PetViewModel(pet: $0) }
            completion()
        }
    }

    func petAt(row: Int) -> PetViewModel {
        return pets[row]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell") as? PetCell else {
            return UITableViewCell()
        }

        let pet = pets[(indexPath as NSIndexPath).row]
        cell.model(pet: pet)

        return cell
    }
}
