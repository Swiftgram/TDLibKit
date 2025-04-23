//
//  ToggleChatIsTranslatable.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
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

