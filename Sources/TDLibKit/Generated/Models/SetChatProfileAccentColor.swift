//
//  SetChatProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Changes the accent color and background custom emoji for the profile of a supergroup or channel chat. Requires can_change_info administrator right
public struct SetChatProfileAccentColor: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the accent color to use for the profile; pass -1 if none. The chat must have at least profileAccentColor.min_supergroup_chat_boost_level for supergroups or profileAccentColor.min_channel_chat_boost_level for channels boost level to pass the corresponding color
    public let profileAccentColorId: Int?

    /// Identifier of a custom emoji to be shown on the chat's profile photo background; 0 if none. Use chatBoostLevelFeatures.can_set_profile_background_custom_emoji to check whether a custom emoji can be set
    public let profileBackgroundCustomEmojiId: TdInt64?


    public init(
        chatId: Int64?,
        profileAccentColorId: Int?,
        profileBackgroundCustomEmojiId: TdInt64?
    ) {
        self.chatId = chatId
        self.profileAccentColorId = profileAccentColorId
        self.profileBackgroundCustomEmojiId = profileBackgroundCustomEmojiId
    }
}

