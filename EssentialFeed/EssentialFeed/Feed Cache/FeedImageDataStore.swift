//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Koushik A N on 23/06/24.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
