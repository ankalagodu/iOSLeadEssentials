//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Koushik A N on 26/06/24.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
