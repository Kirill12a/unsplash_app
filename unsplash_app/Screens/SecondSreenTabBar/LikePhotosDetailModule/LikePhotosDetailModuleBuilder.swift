//
//  LikePhotosDetailModuleBuilder.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

class LikePhotosDetailModuleBuilder {
    static func build() -> LikePhotosDetailViewController {
        let interactor = LikePhotosDetailInteractor()
        let router = LikePhotosDetailRouter()
        let presenter = LikePhotosDetailPresenter(interactor: interactor, router: router)
        let viewController =  LikePhotosDetailViewController()
        
        presenter.view  = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
