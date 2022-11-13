//
//  RibbonLikePhotosModulePresenter.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol RibbonLikePhotosModulePresenterProtocol: AnyObject {
}

class RibbonLikePhotosModulePresenter {
    weak var view: RibbonLikePhotosModuleViewProtocol?
    var router: RibbonLikePhotosModuleRouterProtocol
    var interactor: RibbonLikePhotosModuleInteractorProtocol

    init(interactor: RibbonLikePhotosModuleInteractorProtocol, router: RibbonLikePhotosModuleRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension RibbonLikePhotosModulePresenter: RibbonLikePhotosModulePresenterProtocol {
}
