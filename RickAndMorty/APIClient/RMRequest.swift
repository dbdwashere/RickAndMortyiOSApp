//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Damla Buse Demir on 5.02.2025.
//

import Foundation

/// Object that represents a singlet API Call
final class RMRequest{
    /// API Constants
    private struct Constant{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    ///Path components for API, if any
    private let pathComponents: Set<String>
    
    ///Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String{
        var string = Constant.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
                
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value
                else{return nil}
                
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    ///Computed & constructed AP| url
    public var url: URL? {
        return URL(string: urlString)
    }
    ///Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    /// Description
    /// - Parameters:
    /// - endpoint: Target endpoint
    /// - pathComponents: Collection of Path components
    /// - queryParameters:  Collection of query components
    
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
