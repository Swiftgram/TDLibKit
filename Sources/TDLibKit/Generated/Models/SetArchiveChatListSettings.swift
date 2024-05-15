//
//  SetArchiveChatListSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-783033c4
//  https://github.com/tdlib/td/tree/783033c4
//

import Foundation


/// Changes settings for automatic moving of chats to and from the Archive chat lists
public struct SetArchiveChatListSettings: Codable, Equatable, Hashable {

    /// New settings
    public let settings: ArchiveChatListSettings?


    public init(settings: ArchiveChatListSettings?) {
        self.settings = settings
    }
}

