//
//  SetChatEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Changes the emoji status of a chat. Use chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji status can be set. Requires can_change_info administrator right
public struct SetChatEmojiStatus: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New emoji status; pass null to remove emoji status
    public let emojiStatus: EmojiStatus?


    public init(
        chatId: Int64?,
        emojiStatus: EmojiStatus?
    ) {
        self.chatId = chatId
        self.emojiStatus = emojiStatus
    }
}

