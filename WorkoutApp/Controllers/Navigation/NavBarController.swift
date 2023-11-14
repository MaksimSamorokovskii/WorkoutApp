//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Максим Самороковский on 27.06.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    private func configureAppearance() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helvelticaRagular(with: 17)
        ]
        navigationBar.addBottomBorder(with: R.Colors.separator, height: 1)
    }
}
