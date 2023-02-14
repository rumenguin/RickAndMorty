//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 14/02/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
}
