//
//  ToggleSessionCanAcceptSecretChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Toggles whether a session can accept incoming secret chats
public struct ToggleSessionCanAcceptSecretChats: Codable, Equatable {

    /// True, if incoming secret chats can be accepted by the session
    public let canAcceptSecretChats: Bool?

    /// Session identifier
    public let sessionId: TdInt64?


    public init(
        canAcceptSecretChats: Bool?,
        sessionId: TdInt64?
    ) {
        self.canAcceptSecretChats = canAcceptSecretChats
        self.sessionId = sessionId
    }
}

