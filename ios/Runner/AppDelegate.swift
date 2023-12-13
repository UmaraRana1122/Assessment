import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyAut4my7-naZxdnaDmh74l1U0K7y-rAHpY")  // Replace with your Google Maps API key
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
