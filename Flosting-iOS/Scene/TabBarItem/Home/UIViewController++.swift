//
//  UIViewController++.swift
//  Flosting-iOS
//
//  Created by Park Jungwoo on 2022/06/30.
//

import UIKit

extension UIViewController {
    var topBarHeight: CGFloat {
        return (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0)
        + (self.navigationController?.navigationBar.frame.height ?? 0.0)
    }
}
