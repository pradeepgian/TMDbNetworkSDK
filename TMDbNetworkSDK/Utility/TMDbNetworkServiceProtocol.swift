//
//  TMDbNetworkServiceProtocol.swift
//  TMDbNetworkSDK
//
//  Created by Pradeep Gianchandani on 26/03/24.
//

import Foundation
import Combine

protocol TMDbNetworkServiceProtocol {
    func performNetworkCall<T: Decodable>(for endpoint: EndPoint) -> AnyPublisher<T, Error>
}
