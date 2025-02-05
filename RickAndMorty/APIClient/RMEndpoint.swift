//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Damla Buse Demir on 5.02.2025.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
