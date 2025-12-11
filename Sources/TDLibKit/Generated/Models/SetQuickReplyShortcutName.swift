//
//  SetQuickReplyShortcutName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Changes name of a quick reply shortcut
public struct SetQuickReplyShortcutName: Codable, Equatable, Hashable {

    /// New name for the shortcut. Use checkQuickReplyShortcutName to check its validness
    public let name: String?

    /// Unique identifier of the quick reply shortcut
    public let shortcutId: Int?


    public init(
        name: String?,
        shortcutId: Int?
    ) {
        self.name = name
        self.shortcutId = shortcutId
    }
}

