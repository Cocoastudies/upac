import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //configure firebase
        FIRApp.configure()

        //intantiate window manually
        window = UIWindow()
        AppCoordinator().start(withWindow: window!)

        return true
    }

}
