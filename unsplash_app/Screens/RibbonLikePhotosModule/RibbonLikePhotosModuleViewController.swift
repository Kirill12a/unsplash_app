//
//  RibbonLikePhotosModuleViewController.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

protocol RibbonLikePhotosModuleViewProtocol: AnyObject {
}

class RibbonLikePhotosModuleViewController: UIViewController { // UITableViewController
    // MARK: - Public
    var presenter: RibbonLikePhotosModulePresenterProtocol?

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        view.backgroundColor = .red
    }
}

// MARK: - Private functions
private extension RibbonLikePhotosModuleViewController {
    func initialize() {
    }
}

// MARK: - RibbonLikePhotosModuleViewProtocol
extension RibbonLikePhotosModuleViewController: RibbonLikePhotosModuleViewProtocol {
}
