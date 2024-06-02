//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Koushik A N on 17/03/24.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
