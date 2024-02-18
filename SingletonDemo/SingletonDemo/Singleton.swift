//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import UIKit

// Singleton

struct LoggedInUser {}

final class APIClient {
    static let instance = APIClient()
    
    private init() {}
    
    func login(completion: (LoggenInUser) -> Void) {}
}

class LoginViewController: UIViewController {
    func didTapLoginButton() {
        APIClient.instance.login() { user in
            // show next screen
        }
    }
}

let apiClient = APIClient.instance
