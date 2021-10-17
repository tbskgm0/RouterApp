//
//  Tab1Router.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

//enum Tab1Identifier: String {
//    case
//}
protocol Tab1Wireframe {
    func push()
}

class Tab1Router: Tab1Wireframe {
    private(set) weak var viewController: Tab1ViewProtocol!
    private(set) weak var navigator: UINavigationController!
    
    init(viewController: Tab1ViewProtocol, navigator: UINavigationController) {
        self.viewController = viewController
        self.navigator = navigator
    }
    
    func push() {
        /// viewの作成
        let storyboard = UIStoryboard(name: "Tab1Second", bundle: nil)
        let nextViewController = storyboard.instantiateInitialViewController() as! Tab1SecondViewController
        /// routerの作成
        let router = Tab1SecondRouter(viewController: nextViewController)
        /// presenterの作成
        let presenter = Tab1SecondPresenter(
            view: nextViewController,
            router: router
        )
        nextViewController.inject(presenter: presenter)
        navigator.pushViewController(nextViewController, animated: true)
    }
}
