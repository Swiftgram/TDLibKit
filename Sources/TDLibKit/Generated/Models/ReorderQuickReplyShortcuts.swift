//
//  ReorderQuickReplyShortcuts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the order of quick reply shortcuts
public struct ReorderQuickReplyShortcuts: Codable, Equatable, Hashable {

    /// The new order of quick reply shortcuts
    public let shortcutIds: [Int]?


    public init(shortcutIds: [Int]?) {
        self.shortcutIds = shortcutIds
    }
}

