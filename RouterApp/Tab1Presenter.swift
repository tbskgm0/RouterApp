//
//  tab1Presenter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

protocol Tab1Presentation {
    func push()
}

class Tab1Presenter: Tab1Presentation {
    /// View
    private weak var viewController: Tab1ViewProtocol!
    /// Router
    private let router: Tab1Wireframe
    
    init(view: Tab1ViewProtocol, router: Tab1Wireframe) {
        self.viewController = view
        self.router = router
    }
    
    func push() {
        router.push()
    }
}
