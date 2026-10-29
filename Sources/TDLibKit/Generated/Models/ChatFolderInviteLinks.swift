//
//  ChatFolderInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
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

