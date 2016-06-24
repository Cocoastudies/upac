import UIKit

class PetViewController: UITableViewController {
    
    //MARK: properies
    var petAPI : PetAPI = PetAPIImpl()
    var pets : [Pet] = []
    
    //MARK: life cicle
    
    override func viewDidLoad() {
        getAllPets()
    }
    
    //MARK: tableview datasource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pet = pets[(indexPath as NSIndexPath).row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell") as! PetCell
        cell.setUIWithModel(pet)
        
        return cell
    }
    
    //MARK: private functions
    
    private func getAllPets(){
        petAPI.getAll(self.getAllPetsCallBack)
    }
    
    
    private func getAllPetsCallBack(_ pets: [Pet]){
        self.pets = pets
        
        DispatchQueue.main.async { 
            if self.tableView != nil {
                self.tableView.reloadData()
            }
        }
    }
    
}
