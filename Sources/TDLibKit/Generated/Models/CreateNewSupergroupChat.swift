//
//  CreateNewSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-29752073
//  https://github.com/tdlib/td/tree/29752073
//

import Foundation


/// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
public struct CreateNewSupergroupChat: Codable, Equatable {

    public let description: String?

    /// Pass true to create a supergroup for importing messages using importMessage
    public let forImport: Bool?

    /// Pass true to create a channel chat
    public let isChannel: Bool?

    /// Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
    public let location: ChatLocation?

    /// Message TTL value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let messageTtl: Int?

    /// Title of the new chat; 1-128 characters
    public let title: String?


    public init(
        description: String?,
        forImport: Bool?,
        isChannel: Bool?,
        location: ChatLocation?,
        messageTtl: Int?,
        title: String?
    ) {
        self.description = description
        self.forImport = forImport
        self.isChannel = isChannel
        self.location = location
        self.messageTtl = messageTtl
        self.title = title
    }
}

