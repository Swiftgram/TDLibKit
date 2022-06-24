//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-3f763f6f
//  https://github.com/tdlib/td/tree/3f763f6f
//

import Foundation


/// Contains an HTTP URL
public struct HttpUrl: Codable, Equatable {

    /// The URL
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

