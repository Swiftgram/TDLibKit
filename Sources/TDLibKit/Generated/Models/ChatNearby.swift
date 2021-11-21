//
//  ChatNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Describes a chat located nearby
public struct ChatNearby: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Distance to the chat location, in meters
    public let distance: Int


    public init(
        chatId: Int64,
        distance: Int
    ) {
        self.chatId = chatId
        self.distance = distance
    }
}

