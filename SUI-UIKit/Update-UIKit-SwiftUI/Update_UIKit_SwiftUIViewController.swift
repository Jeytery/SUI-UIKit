//
//  Update_UIKit_SwiftUI.swift
//  SUI-UIKit
//
//  Created by Jeytery on 31.07.2022.
//

import UIKit
import SnapKit
import SwiftUI
import Lister
import Combine

class Update_UIKit_SwiftUIViewController: UIViewController {
    
    private let lbl = UILabel()
    
    private let delegate = Update_UIKit_SwiftUIViewDelegate()
    
    private var storage: AnyCancellable!
    
    private lazy var hosting1 = UIHostingController(
        rootView: Update_UIKit_SwiftUIView(delegate: delegate)
    )
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.addSubview(lbl)
        lbl.snp.makeConstraints() {
            $0.center.equalToSuperview()
        }
        
        view.addSubview(hosting1.view)
        
        hosting1.view.snp.makeConstraints() {
            $0.top.equalTo(lbl.snp.bottom).offset(20)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
            $0.centerX.equalToSuperview()
        }
        
        storage = delegate.$text.sink {
            value in
            self.lbl.text = value
        }
        
        view.backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
