//
//  GetSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Returns information about a secret chat by its identifier. This is an offline request
public struct GetSecretChat: Codable {

    /// Secret chat identifier
    public let secretChatId: Int


    public init(secretChatId: Int) {
        self.secretChatId = secretChatId
    }
}

