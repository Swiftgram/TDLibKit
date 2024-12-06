//
//  DeleteQuickReplyShortcut.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Deletes a quick reply shortcut
public struct DeleteQuickReplyShortcut: Codable, Equatable, Hashable {

    /// Unique identifier of the quick reply shortcut
    public let shortcutId: Int?


    public init(shortcutId: Int?) {
        self.shortcutId = shortcutId
    }
}

