//
//  BotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
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

