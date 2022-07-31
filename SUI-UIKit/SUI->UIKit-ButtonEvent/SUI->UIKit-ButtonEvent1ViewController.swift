//
//  SUI->UIKit-ButtonEvent1.swift
//  SUI-UIKit
//
//  Created by Jeytery on 31.07.2022.
//

import UIKit
import SnapKit
import SwiftUI

class SUI__UIKitButtonEventViewController: UIViewController {

    private let button1 = UIButton()
    private let button2 = UIButton()
    private let lbl = UILabel()
    
    private lazy var hosting1 = UIHostingController(
        rootView: SUI__UIKitButtonEvent1(delegate: self)
    )
    
    private var hosting2: UIHostingController<SUI_UIKitButtonEvent2>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button1)
        button1.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        button1.setTitle("1. Open SwiftUI view from UIKit", for: .normal)
        button1.snp.makeConstraints() {
            $0.center.equalToSuperview()
        }
        
        button1.configuration = .bordered()
        
        view.addSubview(button2)
        button2.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        button2.setTitle("2. Open SwiftUI view from UIKit", for: .normal)
        button2.configuration = .gray()
        button2.snp.makeConstraints() {
            $0.top.equalTo(button1.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(lbl)
        lbl.text = "0"
        lbl.snp.makeConstraints() {
            $0.top.equalTo(button2.snp.bottom).offset(20)
            $0.left.right.equalToSuperview()
        }
        
        lbl.textAlignment = .center
        view.backgroundColor = .systemBackground
        
        self.hosting2 = UIHostingController(
            rootView: SUI_UIKitButtonEvent2(okButtonDidTap: {
                index in
                self.hosting2.dismiss(animated: true, completion: nil)
                self.lbl.text = String(index)
            })
        )
    }
    
    @objc func button1Action() {
        present(hosting1, animated: true, completion: nil)
    }
    
    @objc func button2Action() {
        present(hosting2, animated: true, completion: nil)
    }
}

extension SUI__UIKitButtonEventViewController: SUI__UIKitButtonEvent1Delegate {
    func didTapOkButton(withEmtional index: Int) {
        hosting1.dismiss(animated: true, completion: nil)
        lbl.text = String(index)
    }
}
