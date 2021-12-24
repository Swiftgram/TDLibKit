//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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

