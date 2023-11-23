//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
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

