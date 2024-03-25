//
//  SetNewChatPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-586bc784
//  https://github.com/tdlib/td/tree/586bc784
//

import Foundation


/// Changes privacy settings for new chat creation; for Telegram Premium users only
public struct SetNewChatPrivacySettings: Codable, Equatable, Hashable {

    /// New settings
    public let settings: NewChatPrivacySettings?


    public init(settings: NewChatPrivacySettings?) {
        self.settings = settings
    }
}

