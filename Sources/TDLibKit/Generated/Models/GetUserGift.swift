//
//  GetUserGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Returns information about a gift received or sent by the current user
public struct GetUserGift: Codable, Equatable, Hashable {

    /// Identifier of the message with the gift
    public let messageId: Int64?


    public init(messageId: Int64?) {
        self.messageId = messageId
    }
}

