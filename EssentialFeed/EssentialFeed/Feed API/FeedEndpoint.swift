//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Koushik A N on 27/07/24.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
