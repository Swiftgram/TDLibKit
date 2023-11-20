//
//  GetBackgroundUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Constructs a persistent HTTP URL for a background
public struct GetBackgroundUrl: Codable, Equatable, Hashable {

    /// Background name
    public let name: String?

    /// Background type
    public let type: BackgroundType?


    public init(
        name: String?,
        type: BackgroundType?
    ) {
        self.name = name
        self.type = type
    }
}

