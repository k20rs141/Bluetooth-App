import UIKit
import NearbyInteraction

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        var isSupported: Bool
        if #available(iOS 16.0, *) {
            isSupported = NISession.deviceCapabilities.supportsPreciseDistanceMeasurement
        } else {
            isSupported = NISession.isSupported
        }
        if !isSupported {
            print("unsupported device")
        }
        return true
    }
}
