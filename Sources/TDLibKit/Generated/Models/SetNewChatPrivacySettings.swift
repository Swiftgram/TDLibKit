//
//  SetNewChatPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-fa8294b4
//  https://github.com/tdlib/td/tree/fa8294b4
//

import Foundation


/// Changes privacy settings for new chat creation; can be used only if getOption("can_set_new_chat_privacy_settings")
public struct SetNewChatPrivacySettings: Codable, Equatable, Hashable {

    /// New settings
    public let settings: NewChatPrivacySettings?


    public init(settings: NewChatPrivacySettings?) {
        self.settings = settings
    }
}

