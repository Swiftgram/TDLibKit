//
//  CreatedBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Contains information about a newly created basic group chat
public struct CreatedBasicGroupChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Information about members who failed to be added
    public let failedToAddMembers: FailedToAddMembers


    public init(
        chatId: Int64,
        failedToAddMembers: FailedToAddMembers
    ) {
        self.chatId = chatId
        self.failedToAddMembers = failedToAddMembers
    }
}

