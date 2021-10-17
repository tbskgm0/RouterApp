//
//  SceneRouter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

protocol SceneWireframe {
    func root()
}

class SceneRouter: SceneWireframe {
    private(set) var window: UIWindow!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func root() {
        // 次の画面の生成
        let storyboard = UIStoryboard(name: "TabBarController", bundle: nil)
        window.rootViewController = storyboard.instantiateViewController(identifier: "TabBarController")
        // routerの生成
        let router = TabBarRouter(tabBar: window)
        // presenterの生成
        let presenter = TabBarPresenter(
            view: rootViewController,
            router: router
        )
        rootViewController.inject(presenter: presenter)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
