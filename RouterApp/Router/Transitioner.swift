//
//  Transitioner.swift
//  RouterApp
//
//  Created by TsubasaKogoma on 2021/10/16.
//

import Foundation
import UIKit

protocol Transitioner where Self: UIViewController {
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func popViewController(animated: Bool)
    func popToRootViewController(animated: Bool)
    func popToViewController(_ viewController: UIViewController, animated: Bool)
    func present(viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    func dismiss(animated: Bool)
}
extension Transitioner {
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        guard let navigationController = navigationController else { return }
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    func popViewController(animated: Bool) {}
    
    func popToRootViewController(animated: Bool) {}
    
    func popToViewController(_ viewController: UIViewController, animated: Bool) {}
    
    func present(viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        present(viewController, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool) {
        dismiss(animated: animated)
    }
}
