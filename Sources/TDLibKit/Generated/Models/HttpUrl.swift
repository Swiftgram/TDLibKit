//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
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

