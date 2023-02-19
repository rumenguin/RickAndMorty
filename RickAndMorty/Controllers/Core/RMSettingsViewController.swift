//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 26/01/23.
//

import UIKit

/// Controller to show various app options and settings
final class RMSettingsViewController: UIViewController {
    
    private let viewModel = RMSettingsViewViewModel(cellViewModels: RMSettingsOption.allCases.compactMap({
        return RMSettingsCellViewModel(type: $0)
    }))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
    }

}
