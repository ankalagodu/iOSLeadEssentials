//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Koushik A N on 28/04/24.
//

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
