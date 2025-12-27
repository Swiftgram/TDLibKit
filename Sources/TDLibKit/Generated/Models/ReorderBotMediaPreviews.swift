//
//  ReorderBotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Changes order of media previews in the list of media previews of a bot
public struct ReorderBotMediaPreviews: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must be owned and must have the main Web App
    public let botUserId: Int64?

    /// File identifiers of the media in the new order
    public let fileIds: [Int]?

    /// Language code of the media previews to reorder
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        fileIds: [Int]?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.fileIds = fileIds
        self.languageCode = languageCode
    }
}

