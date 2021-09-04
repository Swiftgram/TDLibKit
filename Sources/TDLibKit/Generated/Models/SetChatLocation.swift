//
//  SetChatLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
public struct SetChatLocation: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New location for the chat; must be valid and not null
    public let location: ChatLocation


    public init(
        chatId: Int64,
        location: ChatLocation
    ) {
        self.chatId = chatId
        self.location = location
    }
}
