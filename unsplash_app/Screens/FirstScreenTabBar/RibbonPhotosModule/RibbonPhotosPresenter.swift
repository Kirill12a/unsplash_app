//
//  RibbonPhotosPresenter.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit

protocol RibbonPhotosPresenterProtocol: AnyObject {
    func goDetailScreen(vc: UIViewController)
    
}

class RibbonPhotosPresenter {
    weak var view: RibbonPhotosViewProtocol?
    var router: RibbonPhotosRouterProtocol
    var interactor: RibbonPhotosInteractorProtocol

    init(interactor: RibbonPhotosInteractorProtocol, router: RibbonPhotosRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension RibbonPhotosPresenter: RibbonPhotosPresenterProtocol {
    func goDetailScreen(vc: UIViewController) {
        router.goToTheDetailedInformationScreen(destenation: vc)
    }
}
