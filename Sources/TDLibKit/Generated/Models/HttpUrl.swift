//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains an HTTP URL
public struct HttpUrl: Codable {

    /// The URL
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

