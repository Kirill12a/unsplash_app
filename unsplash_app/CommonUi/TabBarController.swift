//
//  TabBarController.swift
//  unsplash_app
//
//  Created by Kirill Drozdov on 13.11.2022.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {

    let firstElementInTheTabBarStack  : UICollectionViewController?
    let secondElementInTheTabBarStack : UITableViewController?

    init(firstElementInTheTabBarStack: UICollectionViewController?, secondElementInTheTabBarStack: UITableViewController?) {
        self.firstElementInTheTabBarStack = firstElementInTheTabBarStack
        self.secondElementInTheTabBarStack = secondElementInTheTabBarStack
        super.init(nibName: nil, bundle: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            installationOfAllSpecificationsTabBar("Лента",
                                                  UIImage(systemName: "photo.on.rectangle.angled"),
                                                  firstElementInTheTabBarStack!),
            installationOfAllSpecificationsTabBar("Понравилось",
                                                  UIImage(systemName: "heart.fill"),
                                                  secondElementInTheTabBarStack!)
        ]
    }

    private func installationOfAllSpecificationsTabBar(_ title: String, _ image: UIImage?, _ rootViewController: UIViewController) -> UIViewController {
        let navigationViewController = UINavigationController(rootViewController: rootViewController)
        navigationViewController.tabBarItem.image = image
        navigationViewController.tabBarItem.title = title

        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.black

        return navigationViewController
    }

    private func navigationControllerPreference(){
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
