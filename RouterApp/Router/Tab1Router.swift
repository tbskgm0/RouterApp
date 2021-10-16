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
    func present()
}

class Tab1Router: Tab1Wireframe {
    private(set) weak var viewController: Tab1ViewProtocol!
    
    init(viewController: Tab1ViewProtocol) {
        self.viewController = viewController
    }
    
    func present() {
        let storyboard = UIStoryboard(name: "Tab1Second", bundle: nil)
        /// viewの作成
        let nextViewController = storyboard.instantiateInitialViewController() as! Tab1SecondViewController
        /// modelの作成
        //let model = 1
        /// routerの作成
        let router = Tab1SecondRouter(viewController: nextViewController)
        /// presenterの作成
        let presenter = Tab1SecondPresenter(
            view: nextViewController,
            router: router
        )
        nextViewController.inject(presenter: presenter)
        viewController.present(nextViewController, animated: true, completion: nil)
    }
}
