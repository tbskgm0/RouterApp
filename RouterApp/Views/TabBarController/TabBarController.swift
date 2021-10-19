//
//  TabBarController.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

protocol TabBarControllerProtocol: Transitioner {}

class TabBarController: UITabBarController {
    private var presenter: TabBarPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.push()
    }
    
    /// presenterにDIする
    func inject(presenter: TabBarPresentation) {
        self.presenter = presenter
    }
    
    /*
    /// 
    func push() {
        let navigationController = self.viewControllers![0] as! UINavigationController
        let vc = navigationController.topViewController as! Tab1ViewController
        
        let router = Tab1Router(
            viewController: vc,
            navigator: (vc.navigationController)!
        )
        let presenter = Tab1Presenter(
            view: vc as Tab1ViewProtocol,
            router: router
        )
        vc.inject(presenter: presenter)
    }*/
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("foo")
        case 1:
            print("fuck")
        default:
            fatalError()
        }
    }
}
extension TabBarController: TabBarControllerProtocol {}
