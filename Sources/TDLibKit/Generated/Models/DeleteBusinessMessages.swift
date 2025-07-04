//
//  DeleteBusinessMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Deletes messages on behalf of a business account; for bots only
public struct DeleteBusinessMessages: Codable, Equatable, Hashable {

    /// Unique identifier of business connection through which the messages were received
    public let businessConnectionId: String?

    /// Identifier of the messages
    public let messageIds: [Int64]?


    public init(
        businessConnectionId: String?,
        messageIds: [Int64]?
    ) {
        self.businessConnectionId = businessConnectionId
        self.messageIds = messageIds
    }
}

