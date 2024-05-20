//
//  ChatFolderInviteLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about an invite link to a chat folder
public struct ChatFolderInviteLinkInfo: Codable, Equatable, Hashable {

    /// Identifiers of the chats from the link, which are added to the folder already
    public let addedChatIds: [Int64]

    /// Basic information about the chat folder; chat folder identifier will be 0 if the user didn't have the chat folder yet
    public let chatFolderInfo: ChatFolderInfo

    /// Identifiers of the chats from the link, which aren't added to the folder yet
    public let missingChatIds: [Int64]


    public init(
        addedChatIds: [Int64],
        chatFolderInfo: ChatFolderInfo,
        missingChatIds: [Int64]
    ) {
        self.addedChatIds = addedChatIds
        self.chatFolderInfo = chatFolderInfo
        self.missingChatIds = missingChatIds
    }
}

