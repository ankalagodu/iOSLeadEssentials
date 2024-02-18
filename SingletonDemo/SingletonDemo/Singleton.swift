//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import UIKit

// Singleton

struct LoggedInUser {}

struct FeedItem {}

class APIClient {
    static let shared = APIClient()
    
    private init() {}
    
    func login(completion: (LoggedInUser) -> Void) {}
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

class LoginViewController: UIViewController {
    let api = APIClient.shared
    
    func didTapLoginButton() {
        api.login() { user in
            // show feed screen
        }
    }
}

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.loadFeed { loadedItems in
            // update UI
        }
    }
}
