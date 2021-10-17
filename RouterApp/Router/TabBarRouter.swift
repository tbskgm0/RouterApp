//
//  TabBarRouter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit


protocol TabBarWireframe {
    func root()
}
class TabBarRouter: TabBarWireframe {
    private(set) weak var tabBarController: TabBarController!
    
    init(tabBar: TabBarController) {
        self.tabBarController = tabBar
    }
    
    func root() {
        /// viewの作成
        let storyboard = UIStoryboard(name: "Tab1", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(identifier: "Tab1") as! Tab1ViewController
        /// routerの作成
        let router = Tab1Router(viewController: rootViewController, navigator: rootViewController.navigationController!)
        /// presenterの作成
        let presenter = Tab1Presenter(
            view: rootViewController,
            router: router
        )
        rootViewController.inject(presenter: presenter)
        tabBarController.viewControllers![0] = rootViewController
    }
    
}

