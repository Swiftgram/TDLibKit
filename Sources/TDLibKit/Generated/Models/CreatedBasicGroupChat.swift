//
//  CreatedBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Contains information about a newly created basic group chat
public struct CreatedBasicGroupChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Information about failed to add members
    public let failedToAddMembers: FailedToAddMembers


    public init(
        chatId: Int64,
        failedToAddMembers: FailedToAddMembers
    ) {
        self.chatId = chatId
        self.failedToAddMembers = failedToAddMembers
    }
}

