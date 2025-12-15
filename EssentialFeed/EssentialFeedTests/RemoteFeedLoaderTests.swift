//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Azizbek Asadov on 15.12.2025.
//

import XCTest
import Foundation

protocol HTTPClient {
    func get(from url: URL)
}

final class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
    func get(from url: URL) {
        requestedURL = url
    }
}

final class RemoteFeedLoader {
    
}


final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
