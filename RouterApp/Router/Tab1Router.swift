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
    func dismiss()
    
    func push()
    
    func present()
}

class Tab1Router: Tab1Wireframe {
    private(set) weak var viewController: Tab1ViewProtocol!
    
    init(viewController: Tab1ViewProtocol) {
        self.viewController = viewController
    }
    
    func push() {
        let storyboard = UIStoryboard(name: "Tab1Second", bundle: nil)
        let nextViewController = storyboard.instantiateInitialViewController() as! Tab1SecondViewController
        
        viewController.pushViewController(nextViewController, animated: true)
    }
    
    func dismiss() {
        viewController.dismiss(animated: true)
    }
    
    func present() {
        let storyboard = UIStoryboard(name: "Tab1Second", bundle: nil)
        let nextViewController = storyboard.instantiateInitialViewController() as! Tab1SecondViewController
        
        let tab1SecondPresenter = 
        viewController.present(nextViewController, animated: true, completion: nil)
    }
}
