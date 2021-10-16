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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension Tab1SecondViewController: Tab1ViewProtocol {}
