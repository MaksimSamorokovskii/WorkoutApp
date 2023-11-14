//
//  WABaseView.swift
//  WorkoutApp
//
//  Created by Максим Самороковский on 28.06.2023.
//

import UIKit

class WABaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
}

@objc extension WABaseView {
    func setupViews() {}
    func constaintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}
