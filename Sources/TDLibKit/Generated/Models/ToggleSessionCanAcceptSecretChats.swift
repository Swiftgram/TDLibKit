//
//  ToggleSessionCanAcceptSecretChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-0150094c
//  https://github.com/tdlib/td/tree/0150094c
//

import Foundation


/// Toggles whether a session can accept incoming secret chats
public struct ToggleSessionCanAcceptSecretChats: Codable, Equatable {

    /// Pass true to allow accepting secret chats by the session; pass false otherwise
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

