//
//  Tab1ViewController.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import UIKit


protocol Tab1ViewProtocol: Transitioner {}

class Tab1ViewController: UIViewController {

    private var presenter: Tab1Presentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        presenter.present()
    }
}

// MARK: - extension

extension Tab1ViewController: Tab1ViewProtocol {}
