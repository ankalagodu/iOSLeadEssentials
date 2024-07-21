//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Koushik A N on 16/06/24.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
