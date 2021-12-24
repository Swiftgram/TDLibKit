//
//  CreateNewBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
public struct CreateNewBasicGroupChat: Codable, Equatable {

    /// Title of the new basic group; 1-128 characters
    public let title: String?

    /// Identifiers of users to be added to the basic group
    public let userIds: [Int64]?


    public init(
        title: String?,
        userIds: [Int64]?
    ) {
        self.title = title
        self.userIds = userIds
    }
}

