//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-e79ec946
//  https://github.com/tdlib/td/tree/e79ec946
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

