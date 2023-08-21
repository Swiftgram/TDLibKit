//
//  ChatFolderInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-4d1d22d6
//  https://github.com/tdlib/td/tree/4d1d22d6
//

import Foundation


/// Represents a list of chat folder invite links
public struct ChatFolderInviteLinks: Codable, Equatable, Hashable {

    /// List of the invite links
    public let inviteLinks: [ChatFolderInviteLink]


    public init(inviteLinks: [ChatFolderInviteLink]) {
        self.inviteLinks = inviteLinks
    }
}

