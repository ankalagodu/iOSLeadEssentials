//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import UIKit

// Singleton

struct LoggedInUser {}

class APIClient {
    static var instance = APIClient()
    
    private init() {}
    
    func login(completion: (LoggenInUser) -> Void) {}
}

APIClient.instance = MockAPIClient()

let client = APIClient.instance

class MockAPIClient: APIClient {
    init() {}
}

class LoginViewController: UIViewController {
    func didTapLoginButton() {
        APIClient.instance.login() { user in
            // show next screen
        }
    }
}

let apiClient = APIClient.instance
