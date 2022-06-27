//
//  TabBarController.swift
//  Flosting-iOS
//
//  Created by Park Jungwoo on 2022/06/26.
//

import UIKit

class TabBarController: UITabBarController {
    private lazy var homeViewController: UIViewController = {
        let viewController = UINavigationController(rootViewController: HomeViewController())
        let tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "magazine"),
            tag: 0
        )
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    private lazy var myPageViewController: UIViewController = {
        let viewController = UINavigationController(rootViewController: MyPageViewContorller())
        let tabBarItem = UITabBarItem(
            title: "User",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    private lazy var eventNoticeViewController: UIViewController = {
        let viewController = UINavigationController(rootViewController: EventNoticeViewController())
        let tabBarItem = UITabBarItem(
            title: "Event",
            image: UIImage(systemName: "lightbulb"),
            tag: 2
        )
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [homeViewController, eventNoticeViewController, myPageViewController]
    }
}
