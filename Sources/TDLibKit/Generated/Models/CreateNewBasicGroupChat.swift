//
//  CreateNewBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-d963044e
//  https://github.com/tdlib/td/tree/d963044e
//

import Foundation


/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
public struct CreateNewBasicGroupChat: Codable, Equatable, Hashable {

    /// Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let messageAutoDeleteTime: Int?

    /// Title of the new basic group; 1-128 characters
    public let title: String?

    /// Identifiers of users to be added to the basic group; may be empty to create a basic group without other members
    public let userIds: [Int64]?


    public init(
        messageAutoDeleteTime: Int?,
        title: String?,
        userIds: [Int64]?
    ) {
        self.messageAutoDeleteTime = messageAutoDeleteTime
        self.title = title
        self.userIds = userIds
    }
}

