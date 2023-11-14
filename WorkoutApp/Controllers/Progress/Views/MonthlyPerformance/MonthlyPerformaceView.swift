//
//  MonthlyPerformaceView.swift
//  WorkoutApp
//
//  Created by Максим Самороковский on 09.07.2023.
//

import UIKit

final class MonthlyPerformaceView: WABaseInfoView {

    private let chartsView = WAChartsView()
        
    
    func configure(with items: [WAChartsView.Data], topChartOffset: Int) {
        chartsView.configure(with: items, topChartOffset: topChartOffset)
    }
}

extension MonthlyPerformaceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(chartsView)
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
