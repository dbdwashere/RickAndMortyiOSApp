//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Damla Buse Demir on 8.02.2025.
//

import Foundation

enum RMCharacterGender: String, Codable{
    // The gender of the character ('Female', 'Male', 'Genderless' or 'unknown')
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "Unknown"

}
