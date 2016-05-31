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
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let pet = pets[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PetCell") as! PetCell
        cell.setUIWithModel(pet)
        
        return cell
    }
    
    //MARK: private functions
    
    private func getAllPets(){
        petAPI.getAll(self.getAllPetsCallBack)
    }
    
    
    private func getAllPetsCallBack(pets: [Pet]){
        self.pets = pets
        
        dispatch_async(dispatch_get_main_queue()) { 
            if self.tableView != nil {
                self.tableView.reloadData()
            }
        }
    }
    
}