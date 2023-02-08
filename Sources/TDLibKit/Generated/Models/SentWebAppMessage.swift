//
//  SentWebAppMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Information about the message sent by answerWebAppQuery
public struct SentWebAppMessage: Codable, Equatable {

    /// Identifier of the sent inline message, if known
    public let inlineMessageId: String


    public init(inlineMessageId: String) {
        self.inlineMessageId = inlineMessageId
    }
}

