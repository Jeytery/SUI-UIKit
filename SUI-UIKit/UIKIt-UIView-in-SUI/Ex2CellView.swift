//
//  Ex2CellView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import UIKit
import SnapKit
import SwiftUI

class Ex2CellView: UIView {
    
    private let label = UILabel()
    
    init(title: String = "") {
        super.init(frame: .zero)
        addSubview(label)
        label.snp.makeConstraints() {
            $0.left.equalToSuperview().offset(10)
            $0.centerY.equalToSuperview()
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

struct Ex2CellViewRepresentable: UIViewRepresentable {
    typealias UIViewType = Ex2CellView
    
    var title: String

    func makeUIView(context: Context) -> Ex2CellView {
        return Ex2CellView()
    }
    
    func updateUIView(_ uiView: Ex2CellView, context: Context) {
        uiView.setTitle(title)
    }
}
