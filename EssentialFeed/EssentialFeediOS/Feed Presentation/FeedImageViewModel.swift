//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Koushik A N on 09/06/24.
//

import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
