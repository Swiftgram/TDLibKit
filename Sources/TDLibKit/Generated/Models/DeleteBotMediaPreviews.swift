//
//  DeleteBotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Delete media previews from the list of media previews of a bot
public struct DeleteBotMediaPreviews: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must be owned and must have the main Web App
    public let botUserId: Int64?

    /// File identifiers of the media to delete
    public let fileIds: [Int]?

    /// Language code of the media previews to delete
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

