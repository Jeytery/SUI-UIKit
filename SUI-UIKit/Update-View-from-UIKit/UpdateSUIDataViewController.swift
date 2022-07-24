//
//  UpdateSUIDataViewController.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import UIKit
import SnapKit
import SwiftUI

class UpdateSUIDataViewController: UIViewController {
    
    private var model = UpdateDataViewModel()
    
    private lazy var hostingVC = UIHostingController(
        rootView: UpdateDataView(model: model)
    )
    
    private let clickButton = UIButton()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(hostingVC.view)
        hostingVC.view.snp.makeConstraints() {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.left.right.equalToSuperview()
            $0.height.equalTo(150)
        }
        
        view.addSubview(clickButton)
        clickButton.snp.makeConstraints() {
            $0.top.equalTo(hostingVC.view.snp.bottom)
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
    
    @objc func clickButtonDidTap() {
        model.clicks += 1
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

