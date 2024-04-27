//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Koushik A N on 09/03/24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
