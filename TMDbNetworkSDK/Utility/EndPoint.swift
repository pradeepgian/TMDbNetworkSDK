//
//  EndPoint.swift
//  TMDbNetworkSDK
//
//  Created by Pradeep Gianchandani on 26/03/24.
//

import Foundation

protocol EndPoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var parameters: [String: String] { get }
    var url: URL? { get }
}

extension EndPoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = parameters.map { URLQueryItem(name: $0, value: $1) }
        return components.url
    }
}

public enum TMDbSDKConstants {
    static public let imageBaseURL = "https://image.tmdb.org/t/p/original/"
}
