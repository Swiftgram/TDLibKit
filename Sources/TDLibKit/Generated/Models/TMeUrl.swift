//
//  TMeUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
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

