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
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(HomeViewMainCell.self, forCellWithReuseIdentifier: "HomeViewMainCell")
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        setupLayout()
    }
    
    

}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeViewMainCell", for: indexPath) as? HomeViewMainCell
        cell?.setup()

        return cell ?? UICollectionViewCell()
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let height = bounds.size.height
        let navHeight = self.topBarHeight
        let tabHeight = TabBarController().tabBar.frame.size.height
        return CGSize(width: collectionView.frame.width, height: height - navHeight - tabHeight)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected")
    }
}

private extension HomeViewController {
    func setupNavigationController() {
        title = "Home"
        
        navigationItem.rightBarButtonItem = rightButton
        navigationItem.leftBarButtonItem = leftButton
    }
    
    func setupLayout() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
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
