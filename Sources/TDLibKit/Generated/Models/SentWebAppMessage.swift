//
//  SentWebAppMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
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

