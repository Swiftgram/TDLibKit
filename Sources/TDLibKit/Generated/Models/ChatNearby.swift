//
//  ChatNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4580cfc2
//  https://github.com/tdlib/td/tree/4580cfc2
//

import Foundation


/// Describes a chat located nearby
public struct ChatNearby: Codable, Equatable {

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

