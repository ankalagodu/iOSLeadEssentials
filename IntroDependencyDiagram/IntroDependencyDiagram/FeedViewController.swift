//
//  FeedViewController.swift
//  IntroDependencyDiagram
//
//  Created by Koushik A N on 24/02/24.
//

import UIKit

typealias FeedLoader = (([String]) -> Void) -> Void

class FeedViewController: UIViewController {
    var loadFeed: FeedLoader!
    
    convenience init(loadFeed: @escaping FeedLoader) {
        self.init()
        self.loadFeed = loadFeed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed { items in
            
        }
    }
}

