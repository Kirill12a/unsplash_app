//
//  LikePhotosDetailPresenter.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol LikePhotosDetailPresenterProtocol: AnyObject {
}

class LikePhotosDetailPresenter {
    weak var view: LikePhotosDetailViewProtocol?
    var router: LikePhotosDetailRouterProtocol
    var interactor: LikePhotosDetailInteractorProtocol

    init(interactor: LikePhotosDetailInteractorProtocol, router: LikePhotosDetailRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension LikePhotosDetailPresenter: LikePhotosDetailPresenterProtocol {
}
