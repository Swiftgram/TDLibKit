//
//  ChatNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-d581e049
//  https://github.com/tdlib/td/tree/d581e049
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

