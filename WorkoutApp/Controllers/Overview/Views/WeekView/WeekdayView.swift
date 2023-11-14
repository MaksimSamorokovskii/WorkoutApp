//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Максим Самороковский on 29.06.2023.
//

import UIKit

extension WeekView {
    final class WeekdayView: WABaseView {
        
        private let nameLabel = UILabel()
        private let dateLable = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isTooday ? R.Colors.active : R.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : R.Colors.inactive
            
            dateLable.text = "\(day)"
            dateLable.textColor = isTooday ? .white : R.Colors.inactive
        }
    }
}

extension WeekView.WeekdayView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLable)
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = R.Fonts.helvelticaRagular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLable.font = R.Fonts.helvelticaRagular(with: 15)
        dateLable.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
