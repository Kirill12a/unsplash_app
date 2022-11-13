//
//  RibbonLikePhotosModuleViewController.swift
//  Kirill Drozdov
//
//  Created by Kirill Drozdov on 13.11.2022
//

import UIKit
import RealmSwift

protocol RibbonLikePhotosModuleViewProtocol: AnyObject {
}

class RibbonLikePhotosModuleViewController: UITableViewController { // UITableViewController
    // MARK: - Public
    var presenter: RibbonLikePhotosModulePresenterProtocol?

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        view.backgroundColor = .white
        loadPhotos()
        setUpTableView()

        navigationController?.navigationBar.prefersLargeTitles = true    }


    let realm = try! Realm()
    var photos: Results<FavouritePhoto>!


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadPhotos()
    }
    private func loadPhotos() {
        photos = realm.objects(FavouritePhoto.self)
        tableView.reloadData()
    }


    private func setUpTableView() {
        tableView.register(PhotoTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.separatorInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        title = "Понравилось"
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let photos = photos else {return 0}
        return photos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PhotoTableViewCell
        let photo = photos[indexPath.row]
        cell.photo = photo
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! PhotoTableViewCell
        let photo = cell.photo
        let favoriteVC = LikePhotosDetailModuleBuilder.build()
        favoriteVC.photo = photo
        navigationController?.pushViewController(favoriteVC, animated: true)
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let item = photos[indexPath.row]
            do {
                try realm.write({
                    realm.delete(item)
                })
            }catch{
                print(error.localizedDescription)
            }
        }
        tableView.reloadData()
    }
}

// MARK: - Private functions
private extension RibbonLikePhotosModuleViewController {
    func initialize() {
    }
}

// MARK: - RibbonLikePhotosModuleViewProtocol
extension RibbonLikePhotosModuleViewController: RibbonLikePhotosModuleViewProtocol {
}
