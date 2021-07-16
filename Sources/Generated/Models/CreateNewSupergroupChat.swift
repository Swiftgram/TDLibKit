//
//  CreateNewSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
public struct CreateNewSupergroupChat: Codable {

    public let description: String

    /// True, if the supergroup is created for importing messages using importMessage
    public let forImport: Bool

    /// True, if a channel chat needs to be created
    public let isChannel: Bool

    /// Chat location if a location-based supergroup is being created
    public let location: ChatLocation

    /// Title of the new chat; 1-128 characters
    public let title: String


    public init(
        description: String,
        forImport: Bool,
        isChannel: Bool,
        location: ChatLocation,
        title: String
    ) {
        self.description = description
        self.forImport = forImport
        self.isChannel = isChannel
        self.location = location
        self.title = title
    }
}

