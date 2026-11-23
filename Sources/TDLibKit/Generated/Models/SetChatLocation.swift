//
//  SetChatLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Changes the location of a chat. Available only for some location-based supergroups; use supergroupFullInfo.can_set_location to check whether the method can be used
public struct SetChatLocation: Codable, Equatable, Hashable {

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

