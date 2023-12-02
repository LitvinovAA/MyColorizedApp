//
//  MainViewController.swift
//  MyColorizedApp
//
//  Created by Alexey on 30.11.2023.
//

import UIKit

protocol SetupViewControllerDelegate: AnyObject {
    func setColor(for color: UIColor)
}

final class MainViewController: UIViewController {
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let setupVC = segue.destination as? SetupViewController
        setupVC?.backgroundColor = view.backgroundColor
        setupVC?.delegate = self
    }

}
// MARK: - SetupViewControllerDelegate
extension MainViewController: SetupViewControllerDelegate {
    func setColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
