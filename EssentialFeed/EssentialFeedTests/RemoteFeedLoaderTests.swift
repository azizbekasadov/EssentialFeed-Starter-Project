//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Azizbek Asadov on 15.12.2025.
//

import XCTest
import Foundation

final class HTTPClient {
    var requestedURL: URL?
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
