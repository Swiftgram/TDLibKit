//
//  GetBackgroundUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Constructs a persistent HTTP URL for a background
public struct GetBackgroundUrl: Codable, Equatable, Hashable {

    /// Background name
    public let name: String?

    /// Background type; backgroundTypeChatTheme isn't supported
    public let type: BackgroundType?


    public init(
        name: String?,
        type: BackgroundType?
    ) {
        self.name = name
        self.type = type
    }
}

