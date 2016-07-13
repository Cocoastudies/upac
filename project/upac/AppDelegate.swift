import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        FIRApp.configure()

        //we don't have main storyboard set on info.plist
        //we are instantiating window manually
        window = UIWindow()

        AppCoordinator().start(withWindow: window!)

        return true
    }

}
