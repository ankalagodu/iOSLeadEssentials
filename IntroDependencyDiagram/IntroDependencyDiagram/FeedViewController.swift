//
//  FeedViewController.swift
//  IntroDependencyDiagram
//
//  Created by Koushik A N on 24/02/24.
//

import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
}

struct Reachable {
    static var isNetworkAvailable = false
}

class FeedViewController: UIViewController {
    var remote: FeedLoader!
    var local: FeedLoader!
    
    convenience init(remote: FeedLoader, local: FeedLoader) {
        self.init()
        self.local = local
        self.remote = remote
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Reachable.isNetworkAvailable {
            remote.loadFeed { loadItems in
                // Update UI
            }
        } else {
            local.loadFeed { loadItems in
                // Update UI
            }
        }
        
    }
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}
