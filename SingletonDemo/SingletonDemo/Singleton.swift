//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import Foundation

class APIClient {
    private static let instance = APIClient()
    
    static func getInstance() -> APIClient {
        instance
    }
    
    private init() {}
}

let apiClient = APIClient.getInstance()
