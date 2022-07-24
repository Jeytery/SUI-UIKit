//
//  RootViewController.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import UIKit
import Lister
import SnapKit
import SwiftUI

fileprivate class RootCellView: UIView {
    
    private let label = UILabel()
    
    init(title: String = "") {
        super.init(frame: .zero)
        addSubview(label)
        label.snp.makeConstraints() {
            $0.left.equalToSuperview().offset(10)
            $0.right.equalToSuperview()
            $0.top.bottom.equalToSuperview()
        }
        label.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
}

class RootViewController: UIViewController {
    
    private let lister = Lister(frame: .zero, style: .insetGrouped)
    
    private lazy var content: [ListerSection] = [
        .init(
            rows: [
                .init(
                    view: RootCellView(title: "1. Open SwiftUI View"),
                    height: 45,
                    action: {
                        [unowned self] in
                        self.lister.deselectRow(
                            at: IndexPath(row: 0, section: 0),
                            animated: true
                        )
                        
                        let hostingVC = UIHostingController(
                            rootView: TestSettingsView()
                        )
                        
                        self.navigationController?.pushViewController(hostingVC, animated: true)
                    }
                ),
            ],
            header: "",
            footer: "SwiftUI View in UIKit"
        ),
        .init(
            rows: [
                .init(
                    view: RootCellView(title: "2. Open SwiftUI View"),
                    height: 45,
                    action: {
                        [unowned self] in
                        self.lister.deselectRow(
                            at: IndexPath(row: 0, section: 1),
                            animated: true
                        )
                        
                        let hostingVC = UIHostingController(
                            rootView: Ex2Settings2View()
                        )
                        
                        self.navigationController?.pushViewController(hostingVC, animated: true)
                    }
                )
            ],
            header: "",
            footer: "UIKit UIView in SwiftUI"
        ),
        .init(
            rows: [
                .init(
                    view: RootCellView(title: "3. Open SwiftUI View"),
                    height: 45,
                    action: {
                        [unowned self] in
                        self.lister.deselectRow(
                            at: IndexPath(row: 0, section: 2),
                            animated: true
                        )
                        
                        let hostingVC = UIHostingController(
                            rootView: DataView(title: "Hello data from UIKit")
                        )
                        
                        self.navigationController?.pushViewController(hostingVC, animated: true)
                    }
                )
            ],
            header: "",
            footer: "UIKit UIView in SwiftUI"
        ),
        .init(
            rows: [
                .init(
                    view: RootCellView(title: "Open UIKit UIViewController"),
                    height: 45,
                    action: {
                        [unowned self] in
                        self.lister.deselectRow(
                            at: IndexPath(row: 0, section: 3),
                            animated: true
                        )
                        self.navigationController?.pushViewController(UpdateSUIDataViewController(), animated: true)
                    }
                )
            ],
            header: "",
            footer: "Update Swift UI View data from UIKit"
        ),
        
        .init(
            rows: [
                .init(
                    view: RootCellView(title: "Open UIKit UIViewController"),
                    height: 45,
                    action: {
                        [unowned self] in
                        self.lister.deselectRow(
                            at: IndexPath(row: 0, section: 4),
                            animated: true
                        )
                        
                        self.navigationController?.pushViewController(
                            UsageExample1ViewController(),
                            animated: true
                        )
                    }
                )
            ],
            header: "",
            footer: "Example 1 - usage SwiftUI View in UIKit"
        )
    ]
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.addSubview(lister)
        lister.snp.makeConstraints() {
            $0.edges.equalToSuperview()
        }
        
        lister.set(content)
        title = "SUI-UIKit"
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
