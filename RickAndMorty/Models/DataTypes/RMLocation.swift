//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 26/01/23.
//
/*
 {
   "id": 3,
   "name": "Citadel of Ricks",
   "type": "Space station",
   "dimension": "unknown",
   "residents": [
     "https://rickandmortyapi.com/api/character/8",
     "https://rickandmortyapi.com/api/character/14",
     // ...
   ],
   "url": "https://rickandmortyapi.com/api/location/3",
   "created": "2017-11-10T13:08:13.191Z"
 }
 */

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
