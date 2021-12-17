//
//  CreateSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Returns an existing chat corresponding to a known secret chat
public struct CreateSecretChat: Codable, Equatable {

    /// Secret chat identifier
    public let secretChatId: Int?


    public init(secretChatId: Int?) {
        self.secretChatId = secretChatId
    }
}

