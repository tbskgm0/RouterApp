//
//  TabBarRouter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit


protocol TabBarWireframe {
    func push()
}
class TabBarRouter: TabBarWireframe {
    private(set) weak var tabBarController: TabBarController!
    
    init(tabBar: TabBarController) {
        self.tabBarController = tabBar
    }
    
    func push() {
        let navigationController = tabBarController.viewControllers![0] as! UINavigationController
        print(navigationController)
        let vc = navigationController.topViewController as! Tab1ViewController
        print(vc)
        let router = Tab1Router(
            viewController: vc,
            navigator: (vc.navigationController)!
        )
        let presenter = Tab1Presenter(
            view: vc as Tab1ViewProtocol,
            router: router
        )
        vc.inject(presenter: presenter)
    }
    
}

