//
//  TMeUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-dd77e462
//  https://github.com/tdlib/td/tree/dd77e462
//

import Foundation


/// Represents a URL linking to an internal Telegram entity
public struct TMeUrl: Codable, Equatable, Hashable {

    /// Type of the URL
    public let type: TMeUrlType

    /// URL
    public let url: String


    public init(
        type: TMeUrlType,
        url: String
    ) {
        self.type = type
        self.url = url
    }
}

