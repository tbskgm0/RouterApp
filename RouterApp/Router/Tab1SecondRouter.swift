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
    private(set) weak var viewController: Tab1ViewProtocol!
    
    init(viewController: Tab1ViewProtocol) {
        self.viewController = viewController
    }
    
    func present() {
    }
}
