//
//  Tab1SecondViewController.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit

class Tab1SecondViewController: UIViewController {

    private var presenter: Tab1SecondPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func inject(presenter: Tab1SecondPresentation) {
        self.presenter = presenter
    }

}
extension Tab1SecondViewController: Tab1ViewProtocol {}
