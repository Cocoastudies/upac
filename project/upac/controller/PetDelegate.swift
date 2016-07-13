import UIKit

class PetDelegate: NSObject, UITableViewDelegate {
    /// to be called when user selects row
    var didTap : ( (row: Int) -> Void )?

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTap?(row: indexPath.row)
    }
}
