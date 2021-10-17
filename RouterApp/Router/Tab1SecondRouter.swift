//
//  Tab1SecondRouter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit


protocol Tab1SecondWireframe {
    func present()
}

class Tab1SecondRouter: Tab1SecondWireframe {
    private(set) weak var viewController: Tab1Protocol!
    
    init(viewController: Tab1Protocol) {
        self.viewController = viewController
    }
    
    func present() {
    }
}
