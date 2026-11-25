//
//  DisconnectTonConnectSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Closes a TON Connect session
public struct DisconnectTonConnectSession: Codable, Equatable, Hashable {

    /// Encrypted body of the disconnect event; may be empty if the session has already been closed. Use getTonConnectSessionNextEventId to get the event identifier for the event
    public let body: Data?

    /// Unique identifier of the TON Connect session to close
    public let sessionId: TdInt64?


    public init(
        body: Data?,
        sessionId: TdInt64?
    ) {
        self.body = body
        self.sessionId = sessionId
    }
}

