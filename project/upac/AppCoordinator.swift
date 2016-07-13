import UIKit

class AppCoordinator {

    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    func start(withWindow window: UIWindow) {

        guard let petViewController = storyboard.controller("PetViewController")
            as? PetViewController else {
            return
        }

        //controller's dependecies
        petViewController.petApi = PetApiFireb()
        //navigation
        petViewController.didTap = didTapPet

        window.rootViewController = petViewController
        window.makeKeyAndVisible()
    }

    func didTapPet(pet: PetViewModel) {
        print("upac-debug: didTap \(pet.name)")
    }

}

extension UIStoryboard {
    func controller(_ identifier: String) -> UIViewController {
        return self.instantiateViewController(withIdentifier: identifier)
    }
}
