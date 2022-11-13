//
//  LikePhotosDetailInteractor.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

protocol LikePhotosDetailInteractorProtocol: AnyObject {
}

class LikePhotosDetailInteractor: LikePhotosDetailInteractorProtocol {
    weak var presenter: LikePhotosDetailPresenterProtocol?
}
