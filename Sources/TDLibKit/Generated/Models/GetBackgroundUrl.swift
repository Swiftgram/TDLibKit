//
//  GetBackgroundUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
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

