//
//  CreateNewSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
public struct CreateNewSupergroupChat: Codable, Equatable, Hashable {

    public let description: String?

    /// Pass true to create a supergroup for importing messages using importMessages
    public let forImport: Bool?

    /// Pass true to create a channel chat; ignored if a forum is created
    public let isChannel: Bool?

    /// Pass true to create a forum supergroup chat
    public let isForum: Bool?

    /// Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
    public let location: ChatLocation?

    /// Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let messageAutoDeleteTime: Int?

    /// Title of the new chat; 1-128 characters
    public let title: String?


    public init(
        description: String?,
        forImport: Bool?,
        isChannel: Bool?,
        isForum: Bool?,
        location: ChatLocation?,
        messageAutoDeleteTime: Int?,
        title: String?
    ) {
        self.description = description
        self.forImport = forImport
        self.isChannel = isChannel
        self.isForum = isForum
        self.location = location
        self.messageAutoDeleteTime = messageAutoDeleteTime
        self.title = title
    }
}

