//
//  GetSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Returns information about a secret chat by its identifier. This is an offline method
public struct GetSecretChat: Codable, Equatable, Hashable {

    /// Secret chat identifier
    public let secretChatId: Int?


    public init(secretChatId: Int?) {
        self.secretChatId = secretChatId
    }
}

