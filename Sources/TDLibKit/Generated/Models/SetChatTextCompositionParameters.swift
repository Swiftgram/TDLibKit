//
//  SetChatTextCompositionParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Changes default parameters for text composition with AI in a chat; not supported in secret chats
public struct SetChatTextCompositionParameters: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New default parameters; pass null to reset them
    public let textCompositionParameters: TextCompositionParameters?


    public init(
        chatId: Int64?,
        textCompositionParameters: TextCompositionParameters?
    ) {
        self.chatId = chatId
        self.textCompositionParameters = textCompositionParameters
    }
}

