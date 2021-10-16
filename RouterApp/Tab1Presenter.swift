//
//  tab1Presenter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

protocol Tab1Presentation {
    func present()
    
    func push()
}

class Tab1Presenter: Tab1Presentation {
    /// View
    private weak var tabBarController: TabBarControllerProtocol!
    /// Router
    private let router: Tab1Wireframe
    
    init(tabBar: TabBarControllerProtocol, router: Tab1Wireframe) {
        self.tabBarController = tabBar
        self.router = router
    }
    
    func present() {
        router.present()
    }
    
    func push() {
        router.push()
    }
}
