//
//  RibbonPhotosDetailModuleBuilder.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

class RibbonPhotosDetailModuleBuilder {
    static func build() -> RibbonPhotosDetailViewController {
        let interactor = RibbonPhotosDetailInteractor()
        let router = RibbonPhotosDetailRouter()
        let presenter = RibbonPhotosDetailPresenter(interactor: interactor, router: router)
        let viewController =  RibbonPhotosDetailViewController()
        
        presenter.view  = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
