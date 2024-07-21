//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Koushik A N on 21/07/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
