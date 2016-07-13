import UIKit

class PetDelegate: NSObject, UITableViewDelegate {

    var didTap : ( (row: Int) -> Void )?

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTap?(row: indexPath.row)
    }
}
