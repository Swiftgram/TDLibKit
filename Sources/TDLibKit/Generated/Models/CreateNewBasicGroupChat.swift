//
//  CreateNewBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
public struct CreateNewBasicGroupChat: Codable {

    /// Title of the new basic group; 1-128 characters
    public let title: String

    /// Identifiers of users to be added to the basic group
    public let userIds: [Int]


    public init(
        title: String,
        userIds: [Int]
    ) {
        self.title = title
        self.userIds = userIds
    }
}

