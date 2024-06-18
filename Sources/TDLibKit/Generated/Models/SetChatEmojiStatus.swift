//
//  SetChatEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
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

