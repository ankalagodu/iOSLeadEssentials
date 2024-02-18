//
//  Singleton.swift
//  SingletonDemo
//
//  Created by Koushik A N on 18/02/24.
//

import Foundation

final class APIClient {
    static let instance = APIClient()
    
    private init() {}
}

let apiClient = APIClient.instance
