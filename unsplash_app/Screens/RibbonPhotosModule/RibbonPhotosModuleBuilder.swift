//
//  RibbonPhotosModuleBuilder.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

class RibbonPhotosModuleBuilder {
    static func build() -> RibbonPhotosViewController {

        let interactor = RibbonPhotosInteractor()
        let router = RibbonPhotosRouter()
        let presenter = RibbonPhotosPresenter(interactor: interactor, router: router)
        let viewController = RibbonPhotosViewController(collectionViewLayout: WaterfallLayout())

        presenter.view  = viewController
        router.viewController = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter


        return viewController
    }
}
