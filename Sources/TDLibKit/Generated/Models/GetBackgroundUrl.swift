//
//  GetBackgroundUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Constructs a persistent HTTP URL for a background
public struct GetBackgroundUrl: Codable {

    /// Background name
    public let name: String

    /// Background type
    public let type: BackgroundType


    public init(
        name: String,
        type: BackgroundType
    ) {
        self.name = name
        self.type = type
    }
}

