//
//  BotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-207f3be7
//  https://github.com/tdlib/td/tree/207f3be7
//

import Foundation


/// Contains a list of media previews of a bot
public struct BotMediaPreviews: Codable, Equatable, Hashable {

    /// List of media previews
    public let previews: [BotMediaPreview]


    public init(previews: [BotMediaPreview]) {
        self.previews = previews
    }
}

