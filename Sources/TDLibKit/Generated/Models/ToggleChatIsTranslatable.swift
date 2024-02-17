//
//  ToggleChatIsTranslatable.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Changes the translatable state of a chat
public struct ToggleChatIsTranslatable: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New value of is_translatable
    public let isTranslatable: Bool?


    public init(
        chatId: Int64?,
        isTranslatable: Bool?
    ) {
        self.chatId = chatId
        self.isTranslatable = isTranslatable
    }
}

