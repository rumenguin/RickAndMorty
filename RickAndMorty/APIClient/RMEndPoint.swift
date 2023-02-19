//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 27/01/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndPoint: String, CaseIterable , Hashable {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
