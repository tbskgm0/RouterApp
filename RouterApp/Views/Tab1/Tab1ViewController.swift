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
    }
    
    /// 画面生成時に使用する
    func inject(presenter: Tab1Presenter) {
        self.presenter = presenter
    }
    
    @IBAction func button(_ sender: Any) {
        presenter.push()
    }
}

// MARK: - extension

extension Tab1ViewController: Tab1ViewProtocol {}
