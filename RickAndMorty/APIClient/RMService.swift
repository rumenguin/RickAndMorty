//
//  RMService.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 27/01/23.
//

import Foundation

/// Primary API service object to get Rick and Morty Data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() { }
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func excute(_ request: RMRequest, completion: @escaping () -> () ) {
        
    }
}
