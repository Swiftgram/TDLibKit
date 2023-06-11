//
//  SetChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1886bcf8
//  https://github.com/tdlib/td/tree/1886bcf8
//

import Foundation


/// Changes the background in a specific chat. Supported only in private and secret chats with non-deleted users
public struct SetChatBackground: Codable, Equatable, Hashable {

    /// The input background to use; pass null to create a new filled background or to remove the current background
    public let background: InputBackground?

    /// Chat identifier
    public let chatId: Int64?

    /// Dimming of the background in dark themes, as a percentage; 0-100
    public let darkThemeDimming: Int?

    /// Background type; pass null to remove the current background
    public let type: BackgroundType?


    public init(
        background: InputBackground?,
        chatId: Int64?,
        darkThemeDimming: Int?,
        type: BackgroundType?
    ) {
        self.background = background
        self.chatId = chatId
        self.darkThemeDimming = darkThemeDimming
        self.type = type
    }
}

