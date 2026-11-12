//
//  CommunityPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

