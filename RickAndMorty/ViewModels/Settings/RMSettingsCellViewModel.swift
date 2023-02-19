//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 19/02/23.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    let id = UUID()
    
    private let type: RMSettingsOption
    
    //MARK: - Init
    
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    //MARK: - Public
    
    public var image: UIImage? {
        return type.iconImage
    }
    public var title: String {
        return type.displayTitle
    }
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
}
