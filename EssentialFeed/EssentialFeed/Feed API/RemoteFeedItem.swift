//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Koushik A N on 25/05/24.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
