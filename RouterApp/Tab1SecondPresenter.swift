//
//  Tab1SecondPresenter.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

protocol Tab1SecondPresentation {
    func present()
}
class Tab1SecondPresenter: Tab1SecondPresentation {
    /// View
    private weak var view: Tab1Protocol!
    /// Router
    private let router: Tab1SecondWireframe
    
    init(view: Tab1Protocol, router: Tab1SecondWireframe) {
        self.view = view
        self.router = router
    }
    
    func present() {
        router.present()
    }
}
