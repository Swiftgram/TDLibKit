//
//  AutosaveSettingsException.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Contains autosave settings for a chat, which overrides default settings for the corresponding scope
public struct AutosaveSettingsException: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Autosave settings for the chat
    public let settings: ScopeAutosaveSettings


    public init(
        chatId: Int64,
        settings: ScopeAutosaveSettings
    ) {
        self.chatId = chatId
        self.settings = settings
    }
}

