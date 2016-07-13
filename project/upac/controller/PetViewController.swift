import UIKit

class PetViewController: UITableViewController {

    //MARK: public properties
    var petApi: PetApi?
    var didTap: ((pet: PetViewModel) -> Void)?

    //MARK: private properties
    private let delegate = PetDelegate()
    private var datasource: PetDataSource!

    //MARK: life cicle
    override func viewDidLoad() {

        guard petApi != nil else {
            return
        }

        datasource = PetDataSource(petApi: petApi!)

        tableView.dataSource = datasource
        tableView.delegate = delegate

        //data
        datasource?.fetchData(completion: {

            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

        })

        //navigation
        delegate.didTap = {row in
            let pet = self.datasource.petAt(row: row)
            self.didTap?(pet: pet)
        }

    }

}
