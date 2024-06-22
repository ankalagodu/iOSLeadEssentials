//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Koushik A N on 17/03/24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
