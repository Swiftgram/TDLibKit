//
//  SetNewChatPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
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

