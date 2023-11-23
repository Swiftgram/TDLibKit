//
//  ChatFolderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
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

    /// True, if at least one link has been created for the folder
    public let isShareable: Bool

    /// The title of the folder; 1-12 characters without line feeds
    public let title: String


    public init(
        hasMyInviteLinks: Bool,
        icon: ChatFolderIcon,
        id: Int,
        isShareable: Bool,
        title: String
    ) {
        self.hasMyInviteLinks = hasMyInviteLinks
        self.icon = icon
        self.id = id
        self.isShareable = isShareable
        self.title = title
    }
}

