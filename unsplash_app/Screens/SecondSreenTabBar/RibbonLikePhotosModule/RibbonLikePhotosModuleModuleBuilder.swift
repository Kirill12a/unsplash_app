//
//  RibbonLikePhotosModuleModuleBuilder.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

class RibbonLikePhotosModuleModuleBuilder {
    static func build() -> RibbonLikePhotosModuleViewController {

        let interactor = RibbonLikePhotosModuleInteractor()
        let router = RibbonLikePhotosModuleRouter()
        let presenter = RibbonLikePhotosModulePresenter(interactor: interactor, router: router)
        let viewController = RibbonLikePhotosModuleViewController()

        presenter.view  = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController

        return viewController
    }
}
