//
//  HttpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-572455ea
//  https://github.com/tdlib/td/tree/572455ea
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

