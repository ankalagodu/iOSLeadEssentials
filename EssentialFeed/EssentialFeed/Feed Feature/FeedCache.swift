//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Koushik A N on 26/06/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
