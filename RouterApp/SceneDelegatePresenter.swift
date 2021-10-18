//
//  SceneDelegatePresenter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/18.
//

import Foundation
import UIKit

protocol SceneDelegatePresentation {
    func root()
}

class SceneDelegatePresenter: SceneDelegatePresentation {
    // View
    private weak var window: UIWindow!
    // Router
    private let router: SceneDelegateRouter
    
    init(window: UIWindow, router: SceneDelegateRouter) {
        self.window = window
        self.router = router
    }
    
    func root() {
        router.root()
    }
}
