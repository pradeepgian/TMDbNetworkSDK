//
//  TMDbNetworkClient.swift
//  TMDbNetworkSDK
//
//  Created by Pradeep Gianchandani on 26/03/24.
//

import Foundation
import Combine

open class TMDbNetworkClient {
    private let networkService: TMDbNetworkServiceProtocol
    private let apiKey: String
    
    public init(apiKey: String) {
        self.apiKey = apiKey
        self.networkService = TMDbNetworkService()
    }
    
    open func fetchPopularMovies<T: Decodable>() -> AnyPublisher<T, Error> {
        let popularMoviesEndpoint = PopularMoviesEndPoint(apiKey: apiKey)
        return networkService.performNetworkCall(for: popularMoviesEndpoint)
    }
    
    open func fetchLatestMovies<T: Decodable>() -> AnyPublisher<T, Error> {
        let latestMoviesEndpoint = LatestMoviesEndPoint(apiKey: apiKey)
        return networkService.performNetworkCall(for: latestMoviesEndpoint)
    }
}
