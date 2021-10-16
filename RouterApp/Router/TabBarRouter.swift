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
    private(set) weak var tabBarController: TabBarControllerProtocol!
    
    init(tabBar: TabBarControllerProtocol) {
        self.tabBarController = tabBar
    }
    
    func root() {
        /// viewの作成
        let storyboard = UIStoryboard(name: "TabBarController", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(identifier: "TabBarController") as! TabBarController
        /// routerの作成
        let router = TabBarRouter(tabBar: rootViewController)
        /// presenterの作成
        let presenter = TabBarPresenter(
            view: rootViewController,
            router: router
        )
        rootViewController.inject(presenter: presenter)
    }
    
}

