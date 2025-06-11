//
//  ToggleHasSponsoredMessagesEnabled.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Toggles whether the current user has sponsored messages enabled. The setting has no effect for users without Telegram Premium for which sponsored messages are always enabled
public struct ToggleHasSponsoredMessagesEnabled: Codable, Equatable, Hashable {

    /// Pass true to enable sponsored messages for the current user; false to disable them
    public let hasSponsoredMessagesEnabled: Bool?


    public init(hasSponsoredMessagesEnabled: Bool?) {
        self.hasSponsoredMessagesEnabled = hasSponsoredMessagesEnabled
    }
}

