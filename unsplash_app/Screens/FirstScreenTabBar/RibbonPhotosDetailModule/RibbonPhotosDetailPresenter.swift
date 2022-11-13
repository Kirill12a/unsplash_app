//
//  RibbonPhotosDetailPresenter.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol RibbonPhotosDetailPresenterProtocol: AnyObject {
}

class RibbonPhotosDetailPresenter {
    weak var view: RibbonPhotosDetailViewProtocol?
    var router: RibbonPhotosDetailRouterProtocol
    var interactor: RibbonPhotosDetailInteractorProtocol

    init(interactor: RibbonPhotosDetailInteractorProtocol, router: RibbonPhotosDetailRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension RibbonPhotosDetailPresenter: RibbonPhotosDetailPresenterProtocol {
}
