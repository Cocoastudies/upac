import UIKit

class PetCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var size: UILabel!

    /// update ui using model's properties
    func model(pet: PetViewModel) {
        name.text = pet.name
        size.text = pet.size
    }

}
