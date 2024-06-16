//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Koushik A N on 16/06/24.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
