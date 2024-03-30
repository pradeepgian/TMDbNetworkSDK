//
//  PopularMoviesEndPoint.swift
//  TMDbNetworkSDK
//
//  Created by Pradeep Gianchandani on 26/03/24.
//

import Foundation

struct PopularMoviesEndPoint: EndPoint {
    let scheme: String = "https"
    let host: String = "api.themoviedb.org"
    let path: String = "/3/movie/popular"
    let httpMethod: HTTPMethod = .get
    let parameters: [String: String]

    init(apiKey: String) {
        self.parameters = ["api_key": apiKey]
    }
}
