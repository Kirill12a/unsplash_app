//
//  RibbonPhotosInteractor.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol RibbonPhotosInteractorProtocol: AnyObject {
}

class RibbonPhotosInteractor: RibbonPhotosInteractorProtocol {
    weak var presenter: RibbonPhotosPresenterProtocol?
}
