//
//  ProjectSetupandSharedComponentsApp.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import SwiftUI
import SwiftfulRouting

@main
struct ProjectSetupandSharedComponentsApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
