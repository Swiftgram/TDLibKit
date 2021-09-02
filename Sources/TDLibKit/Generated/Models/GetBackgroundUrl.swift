//
//  GetBackgroundUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
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

