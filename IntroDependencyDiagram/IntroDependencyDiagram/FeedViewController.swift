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
        
        loader.loadFeed { items in
            // Update UI
        }
    }
}

