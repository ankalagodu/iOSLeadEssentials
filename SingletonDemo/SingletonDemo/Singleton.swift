//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import UIKit

// Main module

extension APIClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension APIClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// API module

class APIClient {
    static let shared = APIClient()
    
    private init() {}
    
    func execute(_ :URLRequest, completion: (Data) -> Void) {}
}

// Login module

struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (LoggedInUser) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            // show feed screen
        }
    }
}

// Feed module

struct FeedItem {}

class FeedViewController: UIViewController {
    var loadFeed: ([FeedItem]) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed? { loadedItems in
            // update UI
        }
    }
}
