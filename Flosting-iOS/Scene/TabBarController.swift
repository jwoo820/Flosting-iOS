//
//  TabBarController.swift
//  Flosting-iOS
//
//  Created by Park Jungwoo on 2022/06/26.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainViewController = UINavigationController(rootViewController: HomeViewController())
        mainViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "magazine"),
            selectedImage: UIImage(systemName: "magazine.fill")
        )
        
        let myPageViewController = UINavigationController(rootViewController: MyPageViewContorller())
        myPageViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
        let eventNoticeViewController = UINavigationController(rootViewController: EventNoticeViewController())
        eventNoticeViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "lightbulb"),
            selectedImage: UIImage(systemName: "lightbulb.fill")
        )
        
        viewControllers = [mainViewController, eventNoticeViewController, myPageViewController]
    }
}
