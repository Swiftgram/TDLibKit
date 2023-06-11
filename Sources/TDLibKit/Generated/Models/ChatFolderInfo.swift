//
//  ChatFolderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1886bcf8
//  https://github.com/tdlib/td/tree/1886bcf8
//

import Foundation


/// Contains basic information about a chat folder
public struct ChatFolderInfo: Codable, Equatable, Hashable, Identifiable {

    /// True, if the chat folder has invite links created by the current user
    public let hasMyInviteLinks: Bool

    /// The chosen or default icon for the chat folder
    public let icon: ChatFolderIcon

    /// Unique chat folder identifier
    public let id: Int

    /// The title of the folder; 1-12 characters without line feeds
    public let title: String


    public init(
        hasMyInviteLinks: Bool,
        icon: ChatFolderIcon,
        id: Int,
        title: String
    ) {
        self.hasMyInviteLinks = hasMyInviteLinks
        self.icon = icon
        self.id = id
        self.title = title
    }
}

