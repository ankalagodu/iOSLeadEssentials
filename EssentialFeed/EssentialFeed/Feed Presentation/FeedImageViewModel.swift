//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Koushik A N on 16/06/24.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
