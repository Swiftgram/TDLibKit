//
//  CheckQuickReplyShortcutName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Checks validness of a name for a quick reply shortcut. Can be called synchronously
public struct CheckQuickReplyShortcutName: Codable, Equatable, Hashable {

    /// The name of the shortcut; 1-32 characters
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

