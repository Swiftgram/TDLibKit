//
//  ToggleSessionCanAcceptSecretChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-64406035
//  https://github.com/tdlib/td/tree/64406035
//

import Foundation


/// Toggles whether a session can accept incoming secret chats
public struct ToggleSessionCanAcceptSecretChats: Codable, Equatable {

    /// Pass true to allow accepring secret chats by the session; pass false otherwise
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

