//
//  Update_SUI_UIKit_noViewModelViewController.swift
//  SUI-UIKit
//
//  Created by Jeytery on 13.08.2022.
//

import UIKit
import SnapKit
import SwiftUI

class Update_SUI_UIKit_noViewModelViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(hostingVC.view)
        hostingVC.view.snp.makeConstraints() {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.width.equalToSuperview().dividedBy(2)
            $0.height.equalTo(150)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(clickButton)
        clickButton.snp.makeConstraints() {
            $0.top.equalTo(hostingVC.view.snp.bottom).offset(20)
            $0.width.equalToSuperview().dividedBy(2)
            $0.height.equalTo(55)
            $0.centerX.equalToSuperview()
        }
        
        clickButton.configuration = .tinted()
        clickButton.configuration?.title = "Click Me!"
        clickButton.configuration?.image = UIImage(systemName: "book.fill")
        
        clickButton.configuration?.baseBackgroundColor = .systemBlue
        clickButton.configuration?.baseForegroundColor = .systemBlue
        
        clickButton.addTarget(self, action: #selector(clickButtonDidTap), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    @objc func clickButtonDidTap() {
        print("can't update @State from UIKit")
        suiView.clicks += 1
    }
    
    private let clickButton = UIButton()
    
    private let suiView = Update_SUI_UIKit_noViewModelView()
    
    private lazy var hostingVC = UIHostingController(
        rootView: suiView
    )
}

