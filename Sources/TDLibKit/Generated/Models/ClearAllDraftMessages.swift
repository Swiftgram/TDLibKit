//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Clears draft messages in all chats
public struct ClearAllDraftMessages: Codable {

    /// If true, local draft messages in secret chats will not be cleared
    public let excludeSecretChats: Bool


    public init(excludeSecretChats: Bool) {
        self.excludeSecretChats = excludeSecretChats
    }
}

