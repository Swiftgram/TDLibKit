//
//  SetChatLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
public struct SetChatLocation: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New location for the chat; must be valid and not null
    public let location: ChatLocation?


    public init(
        chatId: Int64?,
        location: ChatLocation?
    ) {
        self.chatId = chatId
        self.location = location
    }
}

