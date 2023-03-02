//
//  RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 02/03/23.
//

import Foundation

enum RMSearchResultViewModel {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
