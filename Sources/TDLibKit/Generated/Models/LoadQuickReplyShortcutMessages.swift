//
//  LoadQuickReplyShortcutMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Loads quick reply messages that can be sent by a given quick reply shortcut. The loaded messages will be sent through updateQuickReplyShortcutMessages
public struct LoadQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// Unique identifier of the quick reply shortcut
    public let shortcutId: Int?


    public init(shortcutId: Int?) {
        self.shortcutId = shortcutId
    }
}

