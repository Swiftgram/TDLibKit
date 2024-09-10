//
//  ReorderQuickReplyShortcuts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-dcfd86c7
//  https://github.com/tdlib/td/tree/dcfd86c7
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

