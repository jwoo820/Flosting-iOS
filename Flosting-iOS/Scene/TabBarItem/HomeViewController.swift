//
//  ViewController.swift
//  Flosting-iOS
//
//  Created by Park Jungwoo on 2022/06/22.
//

import UIKit
import SnapKit
import SwiftUI

class HomeViewController: UIViewController {
    
    private var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(
            image: UIImage(systemName: "lightbulb"),
            style: .plain,
            target: nil,
            action: nil
        )
        
        return button
    }()
    
    private var leftButton: UIBarButtonItem = {
        let button = UIBarButtonItem(
            title: "Flosting",
            style: .plain,
            target: nil,
            action: nil
        )
        
        return button
    }()
    
    private var startButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    func setupLayout() {
        title = "Home"
        
        navigationItem.rightBarButtonItem = rightButton
        navigationItem.leftBarButtonItem = leftButton
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Container().edgesIgnoringSafeArea(.all)
        }
    }
    
    struct Container: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) ->  UIViewController {
            
            let mainViewController = UINavigationController(rootViewController: HomeViewController())
            
            return mainViewController
        }
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        }
        
        typealias UIViewControllerType = UIViewController
    }
}
