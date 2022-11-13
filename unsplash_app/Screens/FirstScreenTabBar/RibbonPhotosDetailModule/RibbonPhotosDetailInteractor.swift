//
//  RibbonPhotosDetailInteractor.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol RibbonPhotosDetailInteractorProtocol: AnyObject {
}

class RibbonPhotosDetailInteractor: RibbonPhotosDetailInteractorProtocol {
    weak var presenter: RibbonPhotosDetailPresenterProtocol?
}
