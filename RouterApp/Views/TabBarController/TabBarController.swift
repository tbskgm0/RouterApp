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
