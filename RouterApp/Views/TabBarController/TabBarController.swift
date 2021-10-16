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

        /*
        let presenter =
        if self.viewControllers != nil {
            for view in self.viewControllers! {
                view.presenter = Tab1Presenter(view: view as! Tab1ViewProtocol, router: Tab1Router(viewController: <#Tab1ViewProtocol#>))
            }
        }
        */
    }
    
    func inject(presenter: TabBarPresentation) {
        self.presenter = presenter
    }
    
}
extension TabBarController: TabBarControllerProtocol {}
