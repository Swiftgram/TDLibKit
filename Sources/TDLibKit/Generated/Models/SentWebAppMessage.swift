//
//  SentWebAppMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
//

import Foundation


/// Information about the message sent by answerWebAppQuery
public struct SentWebAppMessage: Codable, Equatable, Hashable {

    /// Identifier of the sent inline message, if known
    public let inlineMessageId: String


    public init(inlineMessageId: String) {
        self.inlineMessageId = inlineMessageId
    }
}

