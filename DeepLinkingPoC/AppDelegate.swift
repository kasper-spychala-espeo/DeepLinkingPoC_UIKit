//
//  AppDelegate.swift
//  DeepLinkingPoC
//
//  Created by Kasper Spychala on 09/08/2023.
//

import UIKit
import DeepLinkingAppDelegate

@main
class AppDelegate: UIResponder, UIApplicationDelegate, DeepLinkingHandler {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        DeepLinking.shared.configureDeepLinkHandler(handler: self)
        return true
    }

    // Handle deep links from app launch
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        DeepLinking.shared.handleDeepLink(url)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: DeepLinking funcs

    func showPaymentDetails(url: URL) {
        // TODO
    }

    func showPaymentHistory(url: URL) {
        // TODO
    }

    func showNewPayment(url: URL) {
        // TODO
    }
}

