//
//  BaseInfoView.swift
//  WorkoutApp
//
//  Created by Максим Самороковский on 02.07.2023.
//

import UIKit

class WABaseInfoView: WABaseView {
    
    private let titleLablel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helvelticaRagular(with: 13)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let button = WAButton(with: .primary)
    
        let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    init(with title: String? = nil, buttonTitle: String? = nil) {
        titleLablel.text = title?.uppercased()
        titleLablel.textAlignment = buttonTitle == nil ? .center : .left
        
        button.setTitle(buttonTitle?.uppercased())
        button.isHidden = buttonTitle == nil ? true : false
        
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(action, action: action, for: .touchUpInside)
    }
}

extension WABaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLablel)
        setupView(button)
        setupView(contentView)
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLablel.text == nil ? topAnchor : titleLablel.bottomAnchor
        let contentTopOffset: CGFloat = titleLablel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLablel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLablel.topAnchor.constraint(equalTo: topAnchor),
            titleLablel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLablel.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 28),
            
            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
