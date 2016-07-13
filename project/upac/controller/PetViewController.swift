import UIKit

class PetViewController: UITableViewController {

    var petApi: PetApi?
    /// to be called when user taps a pet
    var didTap: ((pet: PetViewModel) -> Void)?

    private let delegate = PetDelegate()
    private var datasource: PetDataSource!

    override func viewDidLoad() {
        //current solution for putting top inset on tableview
        tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)

        //we can't continue without petApi
        guard petApi != nil else {
            return
        }

        datasource = PetDataSource(petApi: petApi!)

        tableView.dataSource = datasource
        tableView.delegate = delegate

        datasource?.fetchData(completion: {
            //once we fetch the data, reload the tableview
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

        })

        delegate.didTap = {row in
            if let pet = self.datasource.petAt(row: row) {
                //tell the navigator, if any, about the tap
                self.didTap?(pet: pet)
            }
        }

    }

}
