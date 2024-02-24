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

class FeedViewController: UIViewController {
    var loader: FeedLoader!
    
    convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loader.loadFeed { loadItems in
            // Update UI
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

struct Reachable {
    static var isNetworkAvailable = false
}

class RemoteWithLocalFallbackFeedLoader: FeedLoader {
    var remote: FeedLoader!
    var local: FeedLoader!
    
    init(remote: FeedLoader, local: FeedLoader) {
        self.local = local
        self.remote = remote
    }
    
    func loadFeed(completion: @escaping ([String]) -> Void) {
        let load = Reachable.isNetworkAvailable ? remote.loadFeed : local.loadFeed
        load(completion)
    }
}

let vc = FeedViewController(loader: RemoteFeedLoader())
let vc1 = FeedViewController(loader: LocalFeedLoader())
var vc2 = FeedViewController()
vc2.loader = RemoteWithLocalFallbackFeedLoader(
    remote: RemoteFeedLoader(),
    local: LocalFeedLoader())
