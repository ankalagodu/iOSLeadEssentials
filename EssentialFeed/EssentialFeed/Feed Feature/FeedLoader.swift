//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Koushik A N on 17/03/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
