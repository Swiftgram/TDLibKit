//
//  CommunityPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Describes actions that a user is allowed to take in a community
public struct CommunityPermissions: Codable, Equatable, Hashable {

    /// True, if the user can change the chats added to the community
    public let canEditChatList: Bool


    public init(canEditChatList: Bool) {
        self.canEditChatList = canEditChatList
    }
}

