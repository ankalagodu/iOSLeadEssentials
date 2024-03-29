//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Koushik A N on 17/03/24.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        
    }
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTest {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        print(client.requestedURL)
        
        XCTAssertNotNil(client.requestedURL)
    }
}
