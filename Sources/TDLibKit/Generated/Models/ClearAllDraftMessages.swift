//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Clears message drafts in all chats
public struct ClearAllDraftMessages: Codable, Equatable, Hashable {

    /// Pass true to keep local message drafts in secret chats
    public let excludeSecretChats: Bool?


    public init(excludeSecretChats: Bool?) {
        self.excludeSecretChats = excludeSecretChats
    }
}

