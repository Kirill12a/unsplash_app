//
//  RibbonPhotosRouter.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

protocol RibbonPhotosRouterProtocol {
    func goToTheDetailedInformationScreen(destenation screen: UIViewController)
}

class RibbonPhotosRouter: RibbonPhotosRouterProtocol {
    weak var viewController: RibbonPhotosViewController?

    func goToTheDetailedInformationScreen(destenation screen: UIViewController) {
        viewController?.navigationController?.pushViewController(screen, animated: true)
    }
}
