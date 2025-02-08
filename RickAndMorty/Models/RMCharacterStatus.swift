//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Damla Buse Demir on 8.02.2025.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // The status of the character ('Alive', 'Dead' or 'unknown')
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "Unknown"
}
