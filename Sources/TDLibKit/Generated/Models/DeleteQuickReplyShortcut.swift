//
//  DeleteQuickReplyShortcut.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
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

