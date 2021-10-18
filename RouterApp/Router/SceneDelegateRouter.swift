//
//  SceneDelegateRouter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/17.
//

import UIKit


protocol SceneDelegateWireframe {
    func root()
}

class SceneDelegateRouter: SceneDelegateWireframe {
    private(set) var window: UIWindow
    
    
    private let storyboardName = "TabBarController"
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func root() {
        // 次の画面作成
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let rootViewController = storyboard.instantiateViewController(identifier: storyboardName) as! TabBarController
        // 次の画面のrouter作成
        let router = TabBarRouter(tabBar: rootViewController)
        // 次の画面のpresenter作成
        let presenter = TabBarPresenter(
            view: rootViewController,
            router: router
        )
        rootViewController.inject(presenter: presenter)
        //　画面遷移
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
