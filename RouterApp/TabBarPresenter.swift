//
//  TabBarPresentation.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import Foundation



protocol TabBarPresentation {
    func push()
}

class TabBarPresenter: TabBarPresentation {
    /// View
    private weak var view: TabBarControllerProtocol!
    
    /// Router
    private let router: TabBarWireframe
    
    init(view: TabBarControllerProtocol, router: TabBarWireframe) {
        self.view = view
        self.router = router
    }
    
    func push() {
        router.push()
    }
}
