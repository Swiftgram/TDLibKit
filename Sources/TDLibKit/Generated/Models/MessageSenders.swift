//
//  MessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Represents a list of message senders
public struct MessageSenders: Codable {

    /// List of message senders
    public let senders: [MessageSender]

    /// Approximate total count of messages senders found
    public let totalCount: Int


    public init(
        senders: [MessageSender],
        totalCount: Int
    ) {
        self.senders = senders
        self.totalCount = totalCount
    }
}

