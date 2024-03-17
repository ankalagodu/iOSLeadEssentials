//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Koushik A N on 17/03/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case Failure(Error)
}

protocol FeedLoader {
    func load(complettion: @escaping (LoadFeedResult) -> Void)
}
