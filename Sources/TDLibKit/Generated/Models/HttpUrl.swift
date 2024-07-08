//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-cb164927
//  https://github.com/tdlib/td/tree/cb164927
//

import Foundation


/// Contains an HTTP URL
public struct HttpUrl: Codable, Equatable, Hashable {

    /// The URL
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

