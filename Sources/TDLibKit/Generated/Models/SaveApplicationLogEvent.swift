//
//  SaveApplicationLogEvent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-cf198484
//  https://github.com/tdlib/td/tree/cf198484
//

import Foundation


/// Saves application log event on the server. Can be called before authorization
public struct SaveApplicationLogEvent: Codable, Equatable {

    /// Optional chat identifier, associated with the event
    public let chatId: Int64?

    /// The log event data
    public let data: JsonValue?

    /// Event type
    public let type: String?


    public init(
        chatId: Int64?,
        data: JsonValue?,
        type: String?
    ) {
        self.chatId = chatId
        self.data = data
        self.type = type
    }
}

