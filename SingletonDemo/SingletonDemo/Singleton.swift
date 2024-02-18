//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import UIKit

// Singleton

// API module

class APIClient {
    static let shared = APIClient()
    
    private init() {}
    
    func execute(_ :URLRequest, completion: (Data) -> Void) {}
}

// Login module

struct LoggedInUser {}

extension APIClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

class LoginViewController: UIViewController {
    let api = APIClient.shared
    
    func didTapLoginButton() {
        api.login() { user in
            // show feed screen
        }
    }
}

struct FeedItem {}

extension APIClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// Feed module
class FeedViewController: UIViewController {
    let api = APIClient.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.loadFeed { loadedItems in
            // update UI
        }
    }
}
