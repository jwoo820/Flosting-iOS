//
//  HomeCollectionViewCell.swift
//  Flosting-iOS
//
//  Created by Park Jungwoo on 2022/06/27.
//

import UIKit
import SnapKit

class HomeViewMainCell: UICollectionViewCell {
    static var height: CGFloat{360.0}
    
    private lazy var subLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 20.0, weight: .semibold)
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 40.0, weight: .bold)
        label.textAlignment = .center

        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("시작하기", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16.0, weight: .bold)
        
        let color = UIColor(red: (190/255), green: (145/255), blue: (244/255), alpha: 1)
        button.setTitleColor(color, for: .normal)

        button.layer.cornerRadius = 7.0
        button.layer.borderWidth = 1.0
        button.layer.borderColor = CGColor(red: (190/255), green: (145/255), blue: (244/255), alpha: 1)
        button.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    func setup() {
        setupLayout()
        subLabel.text = "대학생이라면 누구나,"
        mainLabel.text = "Flosting"
        
        backgroundView = UIImageView(image: UIImage(named: "HomeImg"))
        
    }
}

private extension HomeViewMainCell {
    func setupLayout() {
        [
            subLabel,
            mainLabel,
            startButton
        ].forEach{ addSubview($0) }
        
        subLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().offset(12.0)
        }
        mainLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(subLabel.snp.bottom).offset(6.0)
        }
        startButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(mainLabel.snp.bottom).offset(120.0)
            $0.width.equalTo(140)
            $0.height.equalTo(40)
        }
    }
    
    @objc func didTapStartButton() {
        print("Start Button")
    }
}

