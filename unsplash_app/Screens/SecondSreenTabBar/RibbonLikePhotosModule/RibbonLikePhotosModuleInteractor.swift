//
//  RibbonLikePhotosModuleInteractor.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol RibbonLikePhotosModuleInteractorProtocol: AnyObject {
}

class RibbonLikePhotosModuleInteractor: RibbonLikePhotosModuleInteractorProtocol {
    weak var presenter: RibbonLikePhotosModulePresenterProtocol?
}
